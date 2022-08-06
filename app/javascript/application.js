// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import { createApp } from 'vue'
import MatestackUiVueJs from 'matestack-ui-vuejs'
import MatestackUiBootstrap from 'matestack-ui-bootstrap'
// import VueResource from "vue-resource"
// import vueResourceDistVueResource from "vue-resource/dist/vue-resource.common"

const appInstance = createApp({})

import commentsListComponent from 'comments_list_component'

appInstance.component('comments-list-component', commentsListComponent)

MatestackUiBootstrap.registerComponents(appInstance)

document.addEventListener('DOMContentLoaded', () => {
  MatestackUiVueJs.mount(appInstance)
})
