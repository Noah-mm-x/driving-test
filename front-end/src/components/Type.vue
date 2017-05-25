<template>
<div class="body">
  <div class="sidebar">
    <ul>
      <li class="side-title">车辆选择</li>
      <li v-for='(item,index) in sideList'
          :class = "{active:index==selectCarIndex}"
          @click = 'selectCar(index)'
          @mouseover = 'sideOver(index)'
          @mouseout = 'sideOut(index)'>
        <router-link :to='"/type"+item.link'>
          <i class="iconside"
             :class="[index==selectCarIndex ? item.iconHover : item.icon]">
          </i>
          <p>{{item.type}}</p>
        </router-link>
      </li>
    </ul>
  </div>
  <div class="main" :data-id='selectCarIndex'>
    <div class="main-title">
      <i class="icon-title"></i>
      <p>{{sideList[selectCarIndex].type}}</p>
    </div>
    <div class="main-container">
      <ul class="clearfix">
        <li v-for='(item,index) in boxList'>
          <router-link 
                :to="item.link"
                tag="div"
                :style='{backgroundColor:item.bk}'
          >
            <i  class="icontest"
                :class="item.icon"
            ></i>
          </router-link>  
          <router-link 
                :to="item.link"
                tag="a"
          >{{item.con}}</router-link>
        </li>
      </ul>
      <router-link
              to="\"
              class="vip-btn"
              tag="a"
      >vip考场</router-link>
      <div class="info">已有1003423423人使用了vip考场</div>
    </div>
  </div>
</div>
  
</template>

<script>


export default {
  data () {
    return {
      sideList:[
        {icon:'icon-small-car',iconHover:'icon-small-hover-car',type:'小车',link:'/car'},
        {icon:'icon-small-truck',iconHover:'icon-small-hover-truck',type:'货车',link:'/truck'},
        {icon:'icon-small-bus',iconHover:'icon-small-hover-bus',type:'客车',link:'/bus'},
        {icon:'icon-small-motorcycle',iconHover:'icon-small-hover-motorcycle',type:'摩托车',link:'/motorcycle'}
      ],
      boxList:[
        {bk:'#fcc056',icon:'icon-test-order',con:'顺序练习',link:'/'},
        {bk:'#fe7e4c',icon:'icon-test-random',con:'随机练习',link:'/'},
        {bk:'#6cceec',icon:'icon-test-chapter',con:'章节练习',link:'/'},
        {bk:'#fd6467',icon:'icon-test-special',con:'专项练习',link:'/'},
        {bk:'#f76f93',icon:'icon-test-simulation',con:'模拟考试',link:'/'},
        {bk:'#67e1c6',icon:'icon-test-error',con:'错题练习',link:'/'},
      ]
    }
  },
  computed:{
      selectCarIndex:function(){
        return this.sideList.filter((item)=>{
          return item.link == '/'+ this.$route.params.testType;
        }).map((el,index)=>{
          return this.sideList.indexOf(el);
        });
      }
  },
  methods:{
      selectCar(index){
        let oIndex = index;
        this.selectCarIndex = oIndex;
      },
      sideOver(index){
        let oIndex = index;
        if(this.sideList[oIndex].icon.indexOf('small-')!=-1) this.sideList[oIndex].icon = this.sideList[oIndex].icon.replace('small-','small-hover-');
      },
      sideOut(index){
        let oIndex = index;
        if(this.sideList[oIndex].icon.indexOf('hover-')!=-1) this.sideList[oIndex].icon = this.sideList[oIndex].icon.replace('hover-','');
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
  .sidebar{
    float: left;
    width: 244px;
    ul{
      width: 100%;
      min-height: 46px;
      border: 1px solid #e6e6e6;
      border-top: none;
      li.side-title{
        width: 100%;
        height: 46px;
        background-color: #faf9f7;
        text-align: center;
        line-height: 46px;
        font-size: 16px;
        color: #a0a0a0;
        border-bottom: 1px solid #e6e6e6;
      }
      li:not(:first-child){
        margin: 12px auto 0;
        width: 184px;
        height: 56px;
        background-color: #faf9f7;
        border-radius: 4px;
        &:hover{
          background-color: #56b04b;
          p{
            color: #fff;
          }
        }
        &.active{
          background-color: #56b04b;
          p{
            color: #fff;
          }
        }
      }
      li:last-child{
        margin-bottom: 12px;
      }
      li{
        i{
          float: left;
        }
        p{
          float: left;
          width: 90px;
          text-align: center;
          line-height: 56px;
          font-size: 16px;
          color: #a0a0a0;
        }
      }
    }
  }
  .main{
      float: left;
      width: 876px;
      background-color: #abcdef;
      .main-title{
        width: 100%;
        height: 46px;
        background-color: #faf9f7;
        border-bottom: 1px solid #e6e6e6;
        i{
          float: left;
        }
        p{
          float: left;
          font-size: 16px;
          color: #11161b;
          line-height: 46px;
        }
      }
      .main-container{
        width: 100%;
        background-color: #faf9f7;
        ul{
          margin: 0 auto;
          width: 810px;
          li{
            float: left;
            width: 228px;
            height: 180px;
            margin: 30px 19px 0;
            overflow: hidden;
            div{
              width: 100%;
              height: 120px;
              cursor: pointer;
              overflow: hidden;
            }
            i{
              margin-top: 16px;
            }
            a{
              display: block;
              width: 100%;
              height: 60px;
              font-size: 16px;
              color: #8c8c8c;
              text-align: center;
              line-height: 60px;
              &:hover{
                cursor: pointer;
                text-decoration: underline;
              }
            }
          }
        }
        .vip-btn{
          .default-btn(86px);
          display: block;
          margin: 10px auto 0;
          width: 502px;
          height: 86px;
          background-color: #56b04b;
          font-size: 24px;
          color: #fff;
          border-radius: 3px;
          cursor: pointer;
        }
        .info{
          font-size:14px;
          color: #a09f9e;
          text-align: center;
          margin-top: 22px;
          padding-bottom: 22px;
        }
      }
    }
} 

</style>
