import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["capsule"];
  static values = { replacement: String };
  #text = this.capsuleTarget.querySelector("a");
  #value = this.#text.innerText;

  connect() {}

  toggle() {
    if (this.replacementValue != "") {
      this.toggle_two();
    } else {
      this.capsuleTarget.classList.toggle("toggle");
    }
  }

  toggle_two() {
    this.capsuleTarget.classList.toggle("toggle_two");
    if (this.#text.innerText != this.replacementValue) {
      this.#text.innerText = this.replacementValue;
    } else {
      this.#text.innerText = this.#value;
    }
  }

  chose() {}
}
