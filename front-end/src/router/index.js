import Vue from 'vue'
import Router from 'vue-router'


import Index from '@/components/Index'
import Login from '@/components/Login'
import Register from '@/components/Register'
import Loading from '@/components/Loading'

Vue.use(Router)


export default new Router({
  routes: [
    {path: '/',component: Index},
    {path: '/user/login',component: Login},
    {path: '/user/register',component: Register},
    {path: '/loading',component: Loading},
  ]
})
