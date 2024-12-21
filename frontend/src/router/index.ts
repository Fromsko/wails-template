import { createRouter, createWebHashHistory, type RouteRecordRaw } from 'vue-router'

const routes: Array<RouteRecordRaw> = [
  {
    name: 'Index_View',
    path: '/',
    meta: {
      title: 'Index_View',
      isPage: true
    },
    component: () => import('../components/Dashboard.vue')
  }
]

const router = createRouter({
  routes: routes,
  history: createWebHashHistory()
})

export default router
