import { Controller } from "@hotwired/stimulus"
import { renderChunkModules } from "webpack/lib/Template"

export default class extends Controller {

  static targets = ["waiter", "resto"]

  connect() {
    console.log("connected")
  };


  waiterSignup() {
    // console.log(event);
    // this.element.innerText = "Sign-up";

    this.waiterTarget.classList.remove("d-none")
    this.waiterTarget.classList.add("d-block")
    this.restoTarget.classList.add("d-none")
    this.restoTarget.classList.remove("d-block")
  };

  restoSignup() {
    this.restoTarget.classList.remove("d-none")
    this.restoTarget.classList.add("d-block")
    this.waiterTarget.classList.add("d-none")
    this.waiterTarget.classList.remove("d-block")
  };
};
