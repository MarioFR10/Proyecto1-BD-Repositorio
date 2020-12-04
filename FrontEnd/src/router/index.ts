import store from '@/store'
import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes: Array<RouteConfig> = [
  {
    path: '/',
    name: 'Home',
    meta: {requiresAuth: true},
    component: Home
  },
  {
    path: '/benefactors/:id',
    name: 'Benefactors',
    component: () => import('../views/Benefactors.vue'),
    meta: {requiresAuth: true},
  },
  {
    path: '/accountStatements/:id',
    name: 'AccountStatements',
    component: () => import('../views/AccountStatements.vue'),
    meta: {requiresAuth: true},
  },
  {
    path: '/signIn',
    name: 'SignIn',
    component: () => import(/* webpackChunkName: "about" */ '../views/SignIn.vue')
  },
  {
    path: '/movements/:id',
    name: 'Movements',
    component: () => import('../views/Movements.vue'),
    meta: {requiresAuth: true},
  },
  {
    path: '/cuentaObjetivo/:id',
    name: 'ObjetiveAccounts',
    component: () => import('../views/ObjetiveAccounts.vue'),
    meta: {requiresAuth: true},
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to,from,next)=>{
  if(to.matched.some(record=>record.meta.requiresAuth)){
    if(store.getters.isSignedIn){
      next();
    }
    else{
      next({path:'/signin'});
    }
  }
  else{
    next();
  }
})

export default router
