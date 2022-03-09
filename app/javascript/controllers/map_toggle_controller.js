import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["map", "cards"];
  connect() {}

  toggle_map() {
    this.cardsTarget.classList.toggle("cards-v");
    this.cardsTarget.classList.toggle("cards");
    this.mapTarget.classList.toggle("d-none");
  }
}
