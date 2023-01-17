import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="correct-or-not"
export default class extends Controller {
  static targets = ["answer", "form", "buttons", "next", "submitbtn", "scorebtn"]
  i = 0;
  x = 1;
  y = 0;



  connect() {
    console.log(this.scorebtnTarget)
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
      this.y++;
      if (data.result === "correct") {
        this.answerTarget.innerHTML = "Correct!"
        this.nextBox(this.answerTarget.innerHTML)
        this.submitbtnTarget.classList.add("btn-hidden")
        this.scorebtnTarget.classList.remove("btn-hidden")
      } else {
        this.answerTarget.innerHTML = `Incorrect - ${data.result}`;
        if (this.y === 6) {
          this.answerTarget.innerHTML += ` ${data.year}`;
        }
        this.buttonsTarget.classList.remove("img-hidden");
        this.nextTarget.click()
        this.nextBox("Incorrect!")
        this.nextPage()
        console.log(this.y)
      }
    })
  }

    copy() {
      const date = new Date();
      let day = date.getDate();
      let month = date.getMonth() + 1;
      let year = date.getFullYear();
      let redbox = "🟥".repeat((this.i - 1))
      let currentDate = `${day}/${month}/${year}`;
      navigator.clipboard.writeText(`NewsGuesser ${currentDate}\n📰 ${redbox} 🟩`);
      this.scorebtnTarget.innerHTML = "Copied!"
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
      let target = SquareElement[this.i];
      if (answer === "Incorrect!") {
    target.classList.add("red-square");
  } else if (answer === "Correct!") {
        target.classList.add("green-square");
  }
    this.i++;
  }


};
