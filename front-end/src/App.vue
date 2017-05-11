<template>
  <div id="app">
    <loading v-show="loadingShow"></loading>
    <router-view></router-view>
  </div>
</template>

<script>

import loading from "./components/Loading.vue";

export default {
	data(){
		return{
		}
	},
	computed: {
    	loadingShow () {
	    	return this.$store.state.loadingState
    	}
  	},
  	components:{
  		loading
  	}
}
</script>

<style  scoped>

@import './assets/css/common.less'

</style>
