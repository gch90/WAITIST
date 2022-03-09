import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["chatbox", "close"]

  connect() {
    console.log('connected');
  }

  showChat() {
    this.chatboxTarget.classList.remove("d-none");
    this.closeTarget.classList.remove("d-none");
  }

  hideChat() {
    this.chatboxTarget.classList.add("d-none");
    this.closeTarget.classList.add("d-none");
  }
}
