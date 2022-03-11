import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["summary", "ratings"];
  connect() {}

  open(e) {
    this.base_open(e, this.summaryTarget);
  }

  open_ratings(e) {
    this.base_open(e, this.ratingsTarget);
  }

  base_open(e, target) {
    if (e.target.classList.contains("arrow")) {
      e.target.classList.toggle("rotate");
    } else {
      e.target.parentNode.classList.toggle("rotate");
    }
    target.classList.toggle("d-none");
    target.classList.toggle("fade-in");
  }
}
