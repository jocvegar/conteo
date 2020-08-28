import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
import Vue from 'vue/dist/vue.esm.js';
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import App from '../components/app.vue'
import voteForm from '../components/vote_form.vue'
import NavBar from '../components/navbar.vue'

Vue.use(TurbolinksAdapter)
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.component('app', App)
Vue.component('vote_form', voteForm)
Vue.component('navbar', NavBar)

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
