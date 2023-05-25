import { Application } from "@hotwired/stimulus"
import * as ActiveStorage from "@rails/activestorage"
import "lodash"
import "preline"
import "flowbite"
const application = Application.start()
ActiveStorage.start()
application.debug = false
window.Stimulus   = application
export { application }
