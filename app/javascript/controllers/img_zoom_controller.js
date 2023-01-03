import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="img-zoom"
export default class extends Controller {
  static targets = ["img"]
  connect() {
    this.imgTarget.addEventListener("click", () => {
      this.imgTarget.classList.toggle("large-image")
    })
  }
}
