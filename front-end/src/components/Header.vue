<template>
  <div class="header">
      <div class="logo-box clearfix">
        <div class="logo"></div>
        <div class="info-box">
          <p class="title">专业驾照考试</p>
          <p class="subtitle">我们用专业说话</p>
        </div>
      </div>
      <div class="nav-box">
        <ul class="nav">
          <li v-for='(nav,index) in navs' :class="{'active':index==0}"><a :href="nav.link">{{nav.txt}}</a></li>
        </ul>
        <ul class="user-box">
          <li><a href="javascript:;" @click="linkToLogin">登录</a></li>
          <li><a href="javascript:;" @click="linkToRegister">注册</a></li>
        </ul>
      </div>
      <div class="bottom-bar">
        <div class="side">专业为你</div>
        <div class="main">{{currentPage}}</div>
      </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      navs:[
        {link:'javascript:;',txt:'主页'},
        {link:'javascript:;',txt:'模拟考试'},
        {link:'javascript:;',txt:'找驾校'},
        {link:'javascript:;',txt:'找教练'},
        {link:'javascript:;',txt:'找陪练'}
      ],
      currentPage:'主页'
    }
  },
  methods:{
    linkToLogin(){
      this.$router.push({ name:'login'})
    },
    linkToRegister(){
      this.$router.push({ name:'register'})
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

@import './../assets/css/common.less';

@images : './../assets/images';

.header{
  position: relative;
  width: 100%;
  height: 292px;
  background-color: #26272b;
  z-index: 1;
  overflow: hidden;
  .logo-box{
    margin: 0 auto;
    width: 1120px;
    height: 182px;
    background-color: lighten(#425da4,40%);
    overflow: hidden;
    .logo{
        float: left;
        margin-left: 24px;
        margin-top: 50px;
        width: 76px;
        height: 80px;
        background: url('@{images}/logo.png') no-repeat;
        background-size: 100% 100%;
    }
    .info-box{
      float: left;
      margin-top: 64px;
      margin-left: 18px;
      overflow: hidden;
      p.title{
        font-size: 22px;
        color: #425da4;
      }
      p.subtitle{
        margin-top: 16px;
        font-size: 14px;
        color: #777777;
      }
    }
  }
  .nav-box{
    margin: 0 auto;
    width: 1120px;
    height: 50px;
    background-color: #33363b;
    .nav{
      float: left;
      li{
        float: left;
        margin-left: 30px;
        a{
          display: block;
          height: 50px;
          font-size: 16px;
          color: #888888;
          line-height: 50px;
          &:hover{
          color: #cccccc;
        }
        }
        &.active{
          a{
            color: #cccccc;
          }
        }
      }
    }
    .user-box{
      float: right;
      li{
        float: left;
        margin-right: 30px;
        a{
          display: block;
          height: 50px;
          font-size: 16px;
          color: #888888;
          line-height: 50px;
          &:hover{
            color: #cccccc;
          }
        }
      }
    }
  }
  .bottom-bar{
    margin: 0 auto;
    width: 1120px;
    height: 60px;
    box-sizing: border-box;
    .side{
      float: left;
      width: 214px;
      height: 100%;
      background-color: #62bbc3;
      font-size: 16px;
      color: #e0f1f3;
      padding-left: 30px;
      line-height: 60px;
    }
    .main{
      float: left;
      width: 876px;
      height: 100%;
      background-color: #fff;
      font-size: 16px;
      color: #aaaaaa;
      font-weight: 800;
      text-indent: 30px;
      line-height: 60px;
    }
  }
}


</style>
