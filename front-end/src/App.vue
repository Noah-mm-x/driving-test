<template>
  <div id="app">
    <loading v-show="loadingShow"></loading>
    <app-header v-if='$route.name!="login" && $route.name!="register"'></app-header>
    <router-view></router-view>
  </div>
</template>

<script>

import loading from "./components/Loading.vue";
import appHeader from "./components/Header.vue";

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
  		loading,
		appHeader
  	}
}
</script>

<style  scoped>

@import './assets/css/common.less'

</style>
