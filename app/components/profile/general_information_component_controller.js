import { Controller } from "@hotwired/stimulus";
import _ from "lodash"

export default class extends Controller {
  static targets = ["form"];

  initialize(){
    this.autoSave = _.debounce(this.autoSave, 2000).bind(this)
  }

  autoSave() {
    this.formTarget.submit()
  }
}
