import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="correct-or-not"
export default class extends Controller {
  static targets = ["answer", "form"]
  connect() {
    console.log('hello')
    console.log('answer', this.answerTarget)
    console.log('form', this.formTarget)
  }

  send(event) {
    event.preventDefault()

    console.log(event)
  }
}
