import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static targets = ["chatbox", "messages"];
  static values = {
    chatroomId: Number,
    currentuserid: Number,
  };

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      {
        received: (message) => this.#insertMessageAndScrollDown(message),
      }
    );
  }

  #insertMessageAndScrollDown(data) {
    const dataSenderId = Number.parseInt(
      data.match(/data-sender-id="(?<senderId>\d+)"/).groups["senderId"],
      10
    );
    console.log("sender ", dataSenderId);
    console.log("current_user ", this.currentuseridValue);
    const className =
      dataSenderId === this.currentuseridValue ? "message-mine" : "message-his";

    // console.log(data.replace('message-content', 'sender-style'));

    const message = data.replace("message-mine", className);
    console.log("message_sent ", message);
    this.messagesTarget.insertAdjacentHTML("beforeend", message);
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
    this.chatboxTarget.reset();
  }

  disconnect() {
    this.channel.unsubscribe();
  }
}
