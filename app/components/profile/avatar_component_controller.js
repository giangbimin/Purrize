import { Controller } from "@hotwired/stimulus";
import Uploader from '../../javascript/utils/direct_uploads';

export default class extends Controller {
  static targets = ["form", "input", "preview"]

  uploadAndPreview() {
    this.preview()
    this.submitForm()
  }

  triggerClickUpload() {
    this.inputTarget.click()
  }

  preview() {
    let reader = new FileReader()
    reader.onload = function() {
      var image = this.previewTarget
      image.src = reader.result
    }
    var input = this.inputTarget
    var file = input.files[0]
    reader.readAsDataURL(file)
  }
  
  submitForm() {
    this.formTarget.submit();
  }

  // directUploadFile(filel) {
  //   var url = this.inputTarget.dataset.directUploadUrl
  //   const upload = new Uploader(file, url);
  //   upload.start();
  // }
}
