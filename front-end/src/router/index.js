import Vue from 'vue'
import Router from 'vue-router'

import Index from '@/components/Index'
import Login from '@/components/Login'
import Register from '@/components/Register'
import Loading from '@/components/Loading'
import Header from '@/components/Header'
import Type from '@/components/Type'

Vue.use(Router)


export default new Router({
  mode: 'history',
  routes: [
    {
    	name:'index',
    	path: '/',
    	component: Index,
    },
    {
        name:'type',
        path: '/type',
        component: Type,
        children:[
        {
            path: '/car',
            component: Type
        },
        {
            path: '/truck',
            component: Type
        },
        {
            path: '/bus',
            component: Type
        },
        {
            path: '/motorcycle',
            component: Type
        }
        ]
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


