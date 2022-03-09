import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["summary", "ratings"];
  connect() {}

  open(e) {
    if (e.target.classList.contains("arrow")) {
      e.target.classList.toggle("rotate");
    } else {
      e.target.parentNode.classList.toggle("rotate");
    }
    this.summaryTarget.classList.toggle("d-none");
    this.summaryTarget.classList.toggle("fade-in");
  }

  open_ratings(e) {
    if (e.target.classList.contains("arrow")) {
      e.target.classList.toggle("rotate");
    } else {
      e.target.parentNode.classList.toggle("rotate");
    }
    this.ratingsTarget.classList.toggle("d-none");
    this.ratingsTarget.classList.toggle("fade-in");
  }

}
