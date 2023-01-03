import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="correct-or-not"
export default class extends Controller {
  static targets = ["answer", "form", "two", "buttons"]
  connect() {
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
        this.answerTarget.innerHTML = "Incorrect!";
        this.twoTarget.classList.remove("img-hidden");
        this.buttonsTarget.classList.remove("img-hidden");
      }
    })
  }
}
