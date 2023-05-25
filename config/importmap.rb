# Pin npm packages by running ./bin/importmap
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.1/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "lodash", to: "https://ga.jspm.io/npm:lodash@4.17.21/lodash.js", preload: true
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.turbo.min.js", preload: true
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@7.0.2/app/assets/javascripts/activestorage.esm.js", preload: true
pin "preline", to: "https://ga.jspm.io/npm:preline@1.8.0/dist/preline.js"
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.7
# pin "stimulus-rails-autosave", to: "https://ga.jspm.io/npm:stimulus-rails-autosave@4.1.1/dist/stimulus-rails-autosave.es.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/components", under: "components"
