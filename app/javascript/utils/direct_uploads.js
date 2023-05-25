import { DirectUpload } from "@rails/activestorage"

export default class Uploader {
  constructor(file, url) {
    this.file = file
    this.url = url
    this.upload = new DirectUpload(this.file, this.url, this)
  }

  start() {
    this.upload.create((error, blob) => {
      if (error) {
        // Handle the error
      } else {
        // Add an appropriately-named hidden input to the form
        // with a value of blob.signed_id
      }
    })
  }

  directUploadWillStoreFileWithXHR(request) {
    request.upload.addEventListener("progress",
      event => this.directUploadDidProgress(event))
  }

  directUploadDidProgress(event) {
    // Use event.loaded and event.total to update the progress bar
  }
}
