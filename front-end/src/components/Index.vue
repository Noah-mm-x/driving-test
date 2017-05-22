<template>
    <div class="body" v-if='show'>
      <ul class="clearfix">
        <li v-for='(item,index) in indexList'>
          <i  class='iconcar'
              :class='item.icon'
          ></i>
          <a  href='javarscript:;'
              @click='showPage(item.link)'
          >{{item.con}}</a>
        </li>
      </ul>
    </div>
    <router-view v-else></router-view>
</template>

<script>
export default {
  data () {
    return {
      show:this.$route.path == '/',
      indexList:[
        {link:'/car',icon:'icon-car',con:'小车 驾驶员考试'},
        {link:'/truck',icon:'icon-truck',con:'货车 驾驶员考试'},
        {link:'/bus',icon:'icon-bus',con:'客车 驾驶员考试'},
        {link:'/motorcycle',icon:'icon-motorcycle',con:'摩托车 驾驶员考试'},
        {link:'/collection',icon:'icon-collection',con:'我的收藏'},
        {link:'/wrong',icon:'icon-wrong',con:'错题本'},
      ]
    }
  },
  methods:{
    showPage(link){
      this.show=false;
      this.$router.push(link);
    }
  },
  computed:{

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>
  
@import './../assets/css/common.less';

.body{
  width: 1120px;
  margin: 0 auto;
  ul{
    width: 100%;
    li{
      float: left;
      margin: 10px 0 10px 10px;
      width: 366px;
      height: 270px;
      text-align: center;
      border: 1px solid #e6e6e6;
      background-color: #fff;
      &:nth-child(3n+1){
        margin-left: 0;
      }
      i{
        display: block;
        margin: 30px auto;
      }
      a{
        display: block;
        margin-top: 40px;
        font-size: 16px;
        color: #000000;
        &:hover{
          text-decoration: underline;
        }
      }
    }
  }
}

</style>
