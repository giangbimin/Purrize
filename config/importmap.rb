# Pin npm packages by running ./bin/importmap
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "preline", to: "https://ga.jspm.io/npm:preline@1.8.0/dist/preline.js"
pin "flowbite" # @1.6.5
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.7
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/components", under: "components"