import { Controller } from "@hotwired/stimulus";
import { renderChunkModules } from "webpack/lib/Template";

export default class extends Controller {
  static targets = ["waiter", "resto", "role"];

  connect() {
    this.waiterTarget.classList.remove("d-none");
    this.restoTarget.classList.add("d-none");
    this.roleTarget.value = "waiter";
  }

  chose() {
    this.restoTarget.classList.toggle("d-none");
    this.waiterTarget.classList.toggle("d-none");
    this.roleTarget.value =
      this.roleTarget.value == "restaurant" ? "waiter" : "restaurant";

    console.log(this.roleTarget.value);
  }
}
