import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form", "profile"];
  static values = {};
  connect() {
    this.formTarget.classList.add("d-none");
  }

  open() {
    this.formTarget.classList.remove("d-none");
    this.profileTarget.classList.add("d-none");
  }
}
