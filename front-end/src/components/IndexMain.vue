<template>
  <div class="main" :data-id='typeId'>
    <div class="main-title">
      <i class="icon-title"></i>
      <p>{{type}}</p>
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
</template>

<script>


export default {
  data () {
    return {
      boxList:[
        {bk:'#fcc056',icon:'icon-test-order',con:'顺序练习',link:'\\'},
        {bk:'#fe7e4c',icon:'icon-test-random',con:'随机练习',link:'\\'},
        {bk:'#6cceec',icon:'icon-test-chapter',con:'章节练习',link:'\\'},
        {bk:'#fd6467',icon:'icon-test-special',con:'专项练习',link:'\\'},
        {bk:'#f76f93',icon:'icon-test-simulation',con:'模拟考试',link:'\\'},
        {bk:'#67e1c6',icon:'icon-test-error',con:'错题练习',link:'\\'},
      ]
    }
  },
  props:['type','typeId']
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

@import './../assets/css/common.less';

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

</style>
