<template>
  <div class="body">
    <div class="register-content">
      <div class="register-info">欢迎注册</div>
      <div class="name-box">
        <i class="iconfont icon-yonghu"></i>
        <input type="text" placeholder="用户名" v-model:value="name">
      </div>
      <div class="pwd-box">
        <i class="iconfont icon-123shouyexinxibaomi"></i>
        <input type="password" placeholder="密码" v-model:value="pwd">
      </div>
      <div class="confirm-pwd-box">
        <i class="iconfont icon-123shouyexinxibaomi"></i>
        <input type="password" placeholder="确认密码" v-model:value="confirmPwd" @keyup.enter='register'>
      </div>
      <a class="register-btn" @click="register" href="javascript:;">注册</a>
    </div>
  </div>
</template>

<script>

const md5 = require('md5-js');

export default {
  data () {
    return {
      apiUrl:'http://localhost:3000/users/register',
      name:'',
      pwd:'',
      confirmPwd:''
    }
  },
  methods:{
      register(){
        if(this.name==""|| this.name==null || this.name==undefined){
          this.$swal('用户名不能为空');
          return false;
        }
        if(this.pwd==""|| this.pwd==null || this.pwd==undefined){
          this.$swal('密码不能为空');
          return false;
        }
        if(this.confirmPwd==""|| this.confirmPwd==null || this.confirmPwd==undefined){
          this.$swal('确认密码不能为空');
          return false;
        }
        this.$http.post(this.apiUrl,{
          name:this.name,
          pwd:md5(this.pwd),
          confirmPwd:(this.confirmPwd)
        }).then(result =>{
          let state = result.body.state;
          let msg = result.body.msg;
          let storage = localStorage;
          if(state == 1000){
            this.$swal({
              title:msg
            }).then((isConfirm)=>{
              if(isConfirm) {
                this.$router.push('/');
                storage.setItem('username', this.name);
              }
            })
          }else{
            this.$swal(msg);
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
      background: -webkit-linear-gradient(top, lighten(#75a768,20%) , #75a768);
    }
  }
}
</style>
