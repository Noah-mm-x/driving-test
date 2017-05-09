<template>
  <div class="hello">
    <h1 @click="show">{{msg}}</h1>
  </div>
</template>

<script>
export default {
  name: 'hello',
  data () {
    return {
      msg: '点我看数据'
    }
  },
  methods:{
    show:function () {
      this.$http
          .post('http://localhost:3000/users/con')
          .then(result=>{
            console.log(result.data);
          })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
