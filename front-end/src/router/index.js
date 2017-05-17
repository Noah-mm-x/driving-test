import Vue from 'vue'
import Router from 'vue-router'

import Index from '@/components/Index'
import Login from '@/components/Login'
import Register from '@/components/Register'
import Loading from '@/components/Loading'
import Header from '@/components/Header'

Vue.use(Router)


export default new Router({
  routes: [
    {
    	name:'index',
    	path: '/',
    	component: Index
    },
    {
    	name:'login',
    	path: '/user/login',
    	component: Login
    },
    {
    	name:'register',
    	path: '/user/register',
    	component: Register
    },
  ]
})


