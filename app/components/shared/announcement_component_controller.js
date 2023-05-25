import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.localStorageKey = window.location;
  }

  saveToLocalStorage() {
    const data = this.getFormData();
    localStorage.setItem(this.localStorageKey, JSON.stringify(data));
  }
}
