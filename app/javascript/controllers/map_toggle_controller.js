import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["map", "cards", "capsule"];
  connect() {
    this.capsuleTarget.classList.toggle("toggle");
  }

  toggle() {
    this.cardsTarget.classList.toggle("cards-v");
    this.cardsTarget.classList.toggle("cards");
    this.mapTarget.classList.toggle("d-none");
    this.capsuleTarget.classList.toggle("toggle");
  }
}
