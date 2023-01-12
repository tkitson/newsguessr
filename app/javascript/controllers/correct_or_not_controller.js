import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="correct-or-not"
export default class extends Controller {
  static targets = ["answer", "form", "buttons", "next"]
  i = 0;
  x = 1;
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
        this.nextBox(this.answerTarget.innerHTML)
      } else {
        this.answerTarget.innerHTML = "Incorrect!";
        this.buttonsTarget.classList.remove("img-hidden");
        this.nextTarget.click()
        this.nextBox(this.answerTarget.innerHTML)
        this.nextPage()
      }
    })
  }

    nextPage() {
      const PageElement = this.element
    .getElementsByClassName('pages')
    const tagElement = this.element
    .getElementsByClassName('img-a-tag')
    if (this.x <= PageElement.length) {
      let target = PageElement[this.x];
    target.classList.remove("img-hidden");
    let atag = tagElement[this.x];
    atag.setAttribute("data-lightbox", "newspaper")
    this.x++;
    }
  }

    nextBox(answer) {
      const SquareElement = this.element
    .getElementsByClassName('square')
    console.log(this.i)
    console.log(SquareElement)
      let target = SquareElement[this.i];
      if (answer === "Incorrect!") {
    target.classList.add("red-square");
  } else if (answer === "Correct!") {
        target.classList.add("green-square");
  }
    this.i++;
  }


};
