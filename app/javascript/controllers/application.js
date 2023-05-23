import { Application } from "@hotwired/stimulus"
import "preline";
import 'flowbite';
const application = Application.start()
application.debug = false
window.Stimulus   = application
export { application }
