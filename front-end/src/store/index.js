import Vue from 'vue';
import Vuex from 'vuex';
import VueResource from 'vue-resource';

Vue.use(Vuex);
Vue.use(VueResource);

export default new Vuex.Store({
	state: {
      loadingState: false,
      currentPageIndex : 0
    },
    mutations: {
      showLoading : state => state.loadingState = true,
      hiddenLoading : state => state.loadingState = false,
      changePageIndex : (state,index) => {
      	state.currentPageIndex = index;
      }
  	},
  	actions:{
  	  showLoading : store =>{
  	  	store.commit('showLoading');
  	  },
  	  hiddenLoading : store =>{
  	  	store.commit('hiddenLoading');
  	  },
	  changePageIndex : (store,param) => {
		store.commit('changePageIndex',param);
      }
  	}
})

