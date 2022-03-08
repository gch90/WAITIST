import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['chatbox']

  connect() {
    console.log('connected');
  }

  showChat() {
    this.chatboxTarget.classList.remove("d-none")
  }

}
