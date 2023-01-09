import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="correct-or-not"
export default class extends Controller {
  static targets = ["answer", "form"]
  i = 0;
  x = 0;
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
      console.log(data)
      if (data.result === "correct") {
        this.answerTarget.innerHTML = "Correct!"
        this.nextBox(this.answerTarget.innerHTML)
      } else {
        this.answerTarget.innerHTML = "Incorrect!";
        // this.buttonsTarget.classList.remove("img-hidden");
        this.nextPage()
        // this.nextTarget.click()
        this.nextBox(this.answerTarget.innerHTML)
      }
    })
  }

    nextPage() {
      const PageElement = this.element
    .getElementsByClassName('pages')
    if (this.x <= PageElement.length) {
      let target = PageElement[this.x + 1];
    target.classList.remove("img-hidden");
    PageElement[this.x].classList.add("img-hidden")
    this.x++;
    }
  }

    nextBox(answer) {
      const PageElement = this.element
    .getElementsByClassName('square')
    console.log(PageElement)
      let target = PageElement[this.i];
      if (answer === "Incorrect!") {
    target.classList.add("red-square");
  } else if (answer === "Correct!") {
        target.classList.add("green-square");
  }
    this.i++;
  }


};
