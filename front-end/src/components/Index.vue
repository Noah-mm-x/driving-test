<template>
  <div class="body">
    <div class="sidebar">
      <ul>
        <li class="side-title">车辆选择</li>
        <li v-for='(item,index) in sideList'
            :class = "{active:index==selectCarIndex}"
            @click = 'selectCar(index)'
            @mouseover='sideOver(index)'
            @mouseout='sideOut(index)'>
          <router-link :to='item.link'>
            <i class="iconside"
               :class="[index==selectCarIndex ? item.iconHover : item.icon]">
            </i>
            <p>{{item.type}}</p>
          </router-link>
        </li>
      </ul>
    </div>
    <router-view :type="sideList[selectCarIndex].type"></router-view>
  </div>
</template>

<script>
export default {
  name: 'hello',
  data () {
    return {
      selectCarIndex:0,
      sideList:[
        {icon:'icon-small-car',iconHover:'icon-small-hover-car',type:'小车',link:'/car'},
        {icon:'icon-small-truck',iconHover:'icon-small-hover-truck',type:'货车',link:'/truck'},
        {icon:'icon-small-bus',iconHover:'icon-small-hover-bus',type:'客车',link:'/bus'},
        {icon:'icon-small-motorcycle',iconHover:'icon-small-hover-motorcycle',type:'摩托车',link:'/motorcycle'}
      ]
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
  min-height: 1000px;
  .sidebar{
    float: left;
    width: 244px;
    min-height: 1000px;
    ul{
      width: 100%;
      min-height: 46px;
      border: 1px solid #e6e6e6;
      li.side-title{
        width: 100%;
        height: 46px;
        background-color: #faf9f7;
        text-align: center;
        line-height: 46px;
        font-size: 16px;
        color: #a0a0a0;
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
} 

</style>
