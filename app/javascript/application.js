// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import { createApp } from 'vue'
import MatestackUiVueJs from 'matestack-ui-vuejs'
import MatestackUiBootstrap from 'matestack-ui-bootstrap' // add this

const appInstance = createApp({})

MatestackUiBootstrap.registerComponents(appInstance) // add this

document.addEventListener('DOMContentLoaded', () => {
  MatestackUiVueJs.mount(appInstance)
})
