import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
import Vue from 'vue/dist/vue.esm.js';
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import App from '../components/app.vue'
import Test from '../components/test.vue'

Vue.use(TurbolinksAdapter)
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.component('app', App)
Vue.component('test', Test)

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behavior="vue"]',
    // data: () => {
    //   return {
    //     message: "Can you say hello?"
    //   }
    // }
  })
})
