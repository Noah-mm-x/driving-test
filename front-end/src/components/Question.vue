<template>
  <div class="body">
    <div class="title">{{title}}</div>
    <div class="main">
        <div class="question-container">
            <div class="title-arrow subject-type">{{subjectType}}</div>
            <img v-if='data.imgUrl' class="image" :src="data.imgUrl" alt="">
            <div class="question">
                {{index}}/{{max}} {{data.question}}
            </div>
            <div v-if="data.type=='1'" class="answer">
              <label>
                <input type="radio" name="answer" value="1" @focus='judge($event)'>
                正确
              </label>
              <label>
                <input type="radio" name="answer" value="2" @focus='judge($event)'>
                错误
              </label>
            </div>
            <div v-if="data.type=='2'" class="answer">
              <label>
                <input type="radio" name="answer" value="1" @focus='judge($event)'>
                {{data.a}}
              </label>
              <label>
                <input type="radio" name="answer" value="2" @focus='judge($event)'>
                {{data.b}}
              </label>
              <label>
                <input type="radio" name="answer" value="3" @focus='judge($event)'>
                {{data.c}}
              </label>
              <label>
                <input type="radio" name="answer" value="4" @focus='judge($event)'>
                {{data.d}}
              </label>
            </div>
            <div v-if="infoShow=='0'" class="info wrong">您答错了</div>
            <div v-else-if="infoShow=='1'" class="info right">您答对了</div>
            <div class="submit-btns clearfix">
                <a href="javascript:;" @click='next'>下一题</a>
            </div>
        </div>
        <div class="result-container">
          <div class="right">答对 {{rightNum}} 题</div>
          <div class="wrong">答错 {{wrongNum}} 题</div>
          <div class="rate">正确率 {{rate}}%</div>
          <div class="jump">共{{max}}道题</div>
        </div>
    </div>
  </div>
</template>

<script>


export default {
  data () {
    return {
        apiUrl:'http://localhost:3000/question/car',
        index:'1', //当前题,根据点击下一题而增长
        currentIndex:'1', //数据库中当前的题的位置
        data:'', 
        max:'',
        infoShow:'',
        rightNum:'0',
        wrongNum:'0',
        totalAnswerNum:'0'  //回答过的题数,根据点击选项而增长
    }
  },
  created:function () {
    this.$nextTick(function(){
      this.getData();
    })
  },
  methods:{
    init(){
      this.infoShow = '';
      $('input').prop({"checked": false});
      $('input').prop({'disabled':''});
    },
    getData(){
      this.$http.post(this.apiUrl,{
        id:this.currentIndex
      }).then( result =>{
        let [state,content,max] = [result.body.state,result.body.content,result.body.max];
        if(state == 1000){
          this.max = max;
          this.data = content;
        }
      },res=>{
          this.$store.commit('showLoading');
      })
    },
    next(){
      let isChecked = false;
      $('input[name=answer]').each(function(){
        if(this.checked == true){
            isChecked = true;
            return;
        }
      })
      if(!isChecked){
        this.$swal({
          title:'未做选择',
          type:'warning'
        })
        return false;
      }

      this.init();

      if(this.index>=this.max){
        this.$swal({
            title:'已经是最后一题',
            type:'warning'
        });
        return false;
      }
      this.index++;

      this.$route.query.type == 1 ? this.currentIndex++ : this.currentIndex = this.randomQuestion[(this.index-1)];

      this.getData();
    },
    judge(el){
      let val = el.target.value;
      $(el.target).parent().siblings().children().prop({'disabled':'disabled'});
      if(val==this.data.right){
        this.infoShow = 1;
        this.rightNum++;
      }else{
        this.infoShow = 0;
        this.wrongNum++;
      }
      this.totalAnswerNum++;
    }
  },
  computed:{
    title:function(){
      return this.$route.query.type == 1 ? '顺序练习' : '随机练习'
    },
    subjectType:function(){
      return this.data.type == '1' ? '判断题' : '选择题';
    },
    rate:function(){
      return this.totalAnswerNum == '0' ? '0' :(this.rightNum / this.totalAnswerNum*100).toFixed(2);
    },
    randomQuestion:function(){
      let temp = [];
      for(let i=1,len=this.max;i<=len;i++){
        temp.push(i);
      }
      return temp.sort(()=>{return Math.random()>0.5});
    }
  }
 
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

@import './../assets/css/common.less';

.body{
  width: 1120px;
  margin: 0 auto;
  .title{
    width: 100%;
    height: 64px;
    position: relative;
    font-size: 24px;
    color: #11161b;
    padding-left: 24px;
    line-height: 64px;
    border-left: 1px solid #e6e6e6;
    border-right: 1px solid #e6e6e6;
    &:before{
      content: "";
      position: absolute;
      top: 18px;
      left: 10px;
      width: 2px;
      height: 24px;
      background-color: #5ab24f;
    }
  }
  .main{
    width: 100%;
    height: 488px;
    border: 1px solid #e6e6e6;
    .question-container{
      position: relative;
      width: 100%;
      height: 412px;
      border-bottom: 1px solid #e6e6e6;
      .subject-type{
        position: absolute;
        top: 6px;
        left: -3px;
        font-size: 14px;
        color: #fff;
        font-weight: 800;
        line-height: 39px;
        text-indent: 6px;
      }
      .image{
        position: absolute;
        top: 80px;
        right: 80px;
        max-height: 240px;
        max-width: 360px;
      }
      .question{
        padding: 14px 14px 14px 80px;
        font-size: 18px;
        color: #11161b;
      }
      .answer{
        width: 100%;
        padding: 30px 80px 10px 80px;
        label{
          display: block;
          margin-bottom: 22px;
          input{
            vertical-align: 2px;
            margin-right: 4px;
          }
        }
      }
      .info{
        position: absolute;
        top: 274px;
        left: 80px;
        display: inline-block;
        font-size: 16px;
        line-height: 42px;
        border-radius: 3px;
        padding: 0 12px;
        &.right{
          background: #cce7c9;
          border: 1px solid #b3d7af;
          color: #53bb48;
        }
        &.wrong{
          color: #fd0000;
          background: #fcbabc;
          border: 1px solid #fba4a7;
        }
      }
      .submit-btns{
        position: absolute;
        top: 342px;
        left: 0; 
        width: 100%;
        a{
          .default-btn(46px);
          display: block;
          float: left;
          margin-left: 80px;
          width: 124px;
          height: 46px;
          font-size: 16px;
          color: #fff;
          background-color: #56b04b;
          border-radius: 3px;
        }
      }
    }
    .result-container{
      width: 100%;
      height: 76px;
      div{
        float: left;
        margin-left: 56px;
        font-size: 16px;
        color: #11161b;
        line-height: 76px;
        input{
          width: 44px;
          margin: auto 6px; 
          outline: none;
          vertical-align: 2px;
        }
      }
    }
  }
}


</style>
