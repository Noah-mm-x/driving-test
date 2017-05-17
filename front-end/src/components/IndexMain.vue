<template>
  <div class="main">
    <div class="main-title">
      <i class="icon-title"></i>
      <p>{{type}}</p>
    </div>
  </div>
</template>

<script>


export default {
  data () {
    return {
    }
  },
  props:['type']
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

@import './../assets/css/common.less';

.main{
    float: left;
    width: 876px;
    min-height: 1000px;
    background-color: #abcdef;
    .main-title{
      width: 100%;
      height: 46px;
      background-color: #faf9f7;
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
  }

</style>
