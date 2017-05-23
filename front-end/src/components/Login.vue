<template>
  <div class="body">
      <div class="login-box">
        <div class="login-avatar"></div>
        <div class="login-content">
          <div class="name-box">
            <i class="iconfont icon-yonghu"></i>
            <input type="text" placeholder="用户名" v-model:value="name">
          </div>
          <div class="pwd-box">
            <i class="iconfont icon-123shouyexinxibaomi"></i>
            <input type="text" placeholder="密码" v-model:value="pwd" @keyup.enter='login'>
          </div>
          <a class="jump-to-register" @click="linkToRegister" href="javascript:;">还没账号？注册</a>
          <a class="login-btn" @click="login"  href="javascript:;">登录</a>
        </div>
      </div>
  </div>
</template>

<script>

const md5 = require('md5-js');

export default {
  data () {
    return {
      apiUrl:'http://localhost:3000/users/login',
      name:'',
      pwd:''
    }
  },
  methods:{
      linkToRegister(){
          this.$router.push({name:'register'})
      },
      login(){
        if(this.name==""|| this.name==null || this.name==undefined){
          this.$swal('用户名不能为空');
          return false;
        }
        if(this.pwd==""|| this.pwd==null || this.pwd==undefined){
          this.$swal('密码不能为空');
          return false;
        }
        this.$http.post(this.apiUrl,{
          name:this.name,
          pwd:md5(this.pwd)
        }).then(result =>{
          let [state,msg,userId] = [result.body.state,result.body.msg,result.body.userId];
          let storage = localStorage;
          if(state == 1000){
            this.$swal(msg).then((isConfirm)=>{
              if(isConfirm) {
                this.$router.push('/');
                storage.setItem('username', this.name);
                storage.setItem('userid', userId);
              }
            })
          }else {
            console.log(2);
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

@images : './../assets/images';

// 输入栏图标颜色
@icon-color : #659c62;

.body{
  position: relative;
  width: 100%;
  height: 100%;
  background: url('@{images}/bk.jpg') no-repeat;
  background-size: 100% 100%;
  .login-box{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 442px;
    height: 404px;
    .login-avatar{
      position: absolute;
      top: 28px;
      left: 0;
      right: 0;
      margin: auto;
      width: 124px;
      height: 124px;
      background: url('@{images}/default-avatar.png') no-repeat;
      background-size: 100% 100%;
      border: 3px solid rgba(255,255,255,.3);
      border-radius: 50%;
      z-index: 2;
    }
    .login-content{
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 316px;
      border-radius: 18px;
      background-color: rgba(255,255,255,.3);
      z-index: 1;
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
        margin-top: 90px;
      }
      .pwd-box{
        .input-box();
        margin-top: 16px;
      }
      .jump-to-register{
        display: block;
        text-align: right;
        margin-right: 58px;
        margin-top: 18px;
        font-size: 16px;
        color: #1e6859;
      }
      .login-btn{
        .default-btn(40px);
        display: block;
        width: 76px;
        height: 40px;
        border-radius: 20px;
        color: #fff;
        margin-left: 316px;
        margin-top: 18px;
        margin-bottom: 18px;
        background: -webkit-linear-gradient(top, lighten(#75a768,20%) , #75a768);
      }
    }
  }
}
</style>
