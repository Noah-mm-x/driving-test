import Vue from 'vue';
import Vuex from 'vuex';
import VueResource from 'vue-resource';

Vue.use(Vuex);
Vue.use(VueResource);

export default new Vuex.Store({
	state: {
      loadingState: false
    },
    mutations: {
      showLoading : state => state.loadingState = true,
      hiddenLoading : state => state.loadingState = false
  	}
})

