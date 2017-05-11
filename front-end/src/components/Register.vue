<template>
  <div class="body">
      <div class="register-content">
        <div class="register-info">欢迎注册</div>
        <div class="name-box">
          <i class="iconfont icon-yonghu"></i>
          <input type="text" placeholder="用户名">
        </div>
        <div class="pwd-box">
          <i class="iconfont icon-123shouyexinxibaomi"></i>
          <input type="text" placeholder="密码">
        </div>
        <div class="confirm-pwd-box">
          <i class="iconfont icon-123shouyexinxibaomi"></i>
          <input type="text" placeholder="确认密码">
        </div>
        <a class="register-btn" href="javascript:;">注册</a>
      </div>
    </div>
</template>

<script>
export default {
  data () {
    return {
    }
  },
  methods:{
      
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

@import './../assets/css/common.less';

@images : './../assets/images';

// 输入栏图标颜色
@icon-color : #659c62;

.body{
  position: relative;
  width: 100%;
  height: 100%;
  background: url('@{images}/bk.jpg') no-repeat;
  background-size: 100% 100%;
  .register-content{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 442px;
    height: 328px;
    border-radius: 18px;
    background-color: rgba(255,255,255,.3);
    z-index: 1;
    .register-info{
      width: 100%;
      text-align: center;
      font-size: 36px;
      color: #639a61;
      margin-top: 17px;
      &:before{
        content: "";
        position: absolute;
        top: 42px;
        left: 78px;
        width: 60px;
        height: 3px;
        background-color: lighten(#639a61,8%);
      }
      &:after{
        content: "";
        position: absolute;
        top: 42px;
        left: 304px;
        width: 60px;
        height: 3px;
        background-color: lighten(#639a61,8%);
      }
    }
    .input-box{
      margin: 0 auto;
      width: 364px;
      height: 46px;
      background-color: #fff;
      border-radius: 23px;
      i{
        display: block;
        float: left;
        margin-left: 12px;
        font-size: 22px;
        color: @icon-color;
        line-height: 46px;
      }
      input{
        float: left;
        width: 296px;
        line-height: 28px;
        font-size: 17px;
        color: rgba(0,0,0,.6);
        background-color: transparent;
        outline: none;
        margin-top: 9px;
        margin-left: 10px;
        border: none;
      }
    }
    .name-box{
      .input-box();
      margin-top: 14px;
    }
    .pwd-box{
      .input-box();
      margin-top: 16px;
    }
    .confirm-pwd-box{
      .input-box();
      margin-top: 16px;
    }

    .register-btn{
      .default-btn(40px);
      display: block;
      width: 76px;
      height: 40px;
      border-radius: 20px;
      color: #fff;
      margin-left: 316px;
      margin-top: 18px;
      margin-bottom: 18px;
      background: -webkit-linear-gradient(top, #cdedae , #639a61);
    }
  }
}
</style>
