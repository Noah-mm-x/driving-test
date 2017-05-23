// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import VueResource from 'vue-resource' 
import VueSweetAlert from 'vue-sweetalert'
import Vuex from 'vuex'
import store from './store/index'

Vue.use(VueResource);
Vue.use(VueSweetAlert);
Vue.use(Vuex);

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})

Vue.http.interceptors.push((request, next) => {
    store.dispatch('showLoading');
    console.log('请求中...');
    next((response) => {
        store.dispatch('hiddenLoading');
    	  console.log('请求结束...');
        return response
    });
});
