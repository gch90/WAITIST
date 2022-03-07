import { Controller } from "stimulus"
import consumer from '../channels/consumer'

export default class extends Controller {

  static targets = ['chatbox']
  static values = { chatroomId: Number }

  connect() {
    console.log('connected');
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (message) => {
        this.element.insertAdjacentHTML('beforeend', message)
        this.element.scrollTop = this.element.scrollHeight
      } }
    )
  }

  disconnect() {
    this.channel.unsubscribe()
  }
}
