<template>
  <div class="body">
    <div class="title">顺序练习</div>
    <div class="main">
        <div class="question-container">
            <div class="title-arrow subject-type">单选题</div>
            <img class="image" src="http://ww3.sinaimg.cn/mw600/5eb4d75agw1e28yoq99yfj.jpg" alt="">
            <div class="question">
                2/1330 机动车驾驶人造成事故后逃逸是否属于犯罪
            </div>
            <div class="answer">
              <label>
                <input type="radio" name="answer" value="A">
                正确
              </label>
              <label>
                <input type="radio" name="answer" value="B">
                正确
              </label>
              <label>
                <input type="radio" name="answer" value="C">
                正确
              </label>
              <label>
                <input type="radio" name="answer" value="D">
                正确
              </label>
            </div>
            <div class="info right">您答错了，正确答案是：错误</div>
            <div class="submit-btns clearfix">
                <a href="javascript:;">上一题</a>
                <a href="javascript:;">下一题</a>
            </div>
        </div>
        <div class="result-container">
          <div class="right" @click="showData">答对 0 题</div>
          <div class="wrong">答错 0 题</div>
          <div class="rate">正确率 0.00%</div>
          <div class="jump">共1330道题 跳转到<input type="text">题</div>
        </div>
    </div>
  </div>
</template>

<script>


export default {
  data () {
    return {
        getDataApiUrl:'http://localhost:3000/question/car',
        getMAXApiUrl:'http://localhost:3000/question/max'
    }
  },
  methods:{
    showData(){
      this.$http.post(this.getDataApiUrl,{
        id:5
      }).then( result =>{
        let [state,content,max] = [result.body.state,result.body.content,result.body.max];
        if(state == 1000){
          console.log(content);
          console.log(max);
        }
      },res=>{
          this.$store.commit('showLoading');
      })
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
      top: 17px;
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
        width: 100%;
        margin-top: 68px;
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
