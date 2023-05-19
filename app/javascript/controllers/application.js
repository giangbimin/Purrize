import { Application } from "@hotwired/stimulus"
import "preline"
const application = Application.start()
application.debug = false
window.Stimulus   = application
export { application }
