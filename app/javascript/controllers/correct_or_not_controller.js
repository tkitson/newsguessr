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
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
    .then((response) => response.json())
    .then((data) => {
      if (data.result === "correct") {
        this.answerTarget.innerHTML = "Correct!"
      } else {
        this.answerTarget.innerHTML = "Incorrect!"
      }
    })
  }
}
