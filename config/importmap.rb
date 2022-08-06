pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.31/dist/vue.esm-browser.js" if Rails.env.development?
pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.31/dist/vue.esm-browser.prod.js" if Rails.env.production?
# TODO: Try with local gem
pin "matestack-ui-vuejs", to: "https://cdn.jsdelivr.net/npm/matestack-ui-vuejs@3.1.0/dist/matestack-ui-vuejs.esm.js" # jspm currently not working


# below pins for matestack-ui-boostrap
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2/dist/esm/popper.js"
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.esm.min.js"
pin "matestack-ui-bootstrap", to: "https://cdn.jsdelivr.net/npm/matestack-ui-bootstrap@3.1.0/dist/matestack-ui-bootstrap.esm.js"

pin "vue-resource", to: "https://ga.jspm.io/npm:vue-resource@1.5.3/dist/vue-resource.common.js"
pin "vue-resource/dist/vue-resource.common", to: "https://ga.jspm.io/npm:vue-resource@1.5.3/dist/vue-resource.common.js"

pin "comments_list_component", to: "components/comments/comments_list_component.js" # do not prefix app/matestack!
