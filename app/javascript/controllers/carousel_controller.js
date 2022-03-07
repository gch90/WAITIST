import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["main", "images"];
  static values = {};
  #i = 0;
  connect() {
    console.log(this.mainTarget.querySelector("img"));
    this.gradientAdd();
  }

  forward() {
    this.gradientRemove();
    if (this.#i >= this.imagesTotal() - 1) {
      this.#i = 0;
    } else {
      this.#i++;
    }
    this.gradientAdd();
    this.imageReplace();
  }

  back() {
    this.gradientRemove();
    if (this.#i <= 0) {
      this.#i = this.imagesTotal() - 1;
    } else {
      this.#i--;
    }
    this.gradientAdd();
    this.imageReplace();
  }

  gradientAdd() {
    this.imagesTarget.children[this.#i]
      .querySelector(".gradient")
      .classList.add("d-none");
    this.imagesTarget.children[this.#i]
      .querySelector(".bar")
      .classList.remove("d-none");
  }

  gradientRemove() {
    this.imagesTarget.children[this.#i]
      .querySelector(".gradient")
      .classList.remove("d-none");
    this.imagesTarget.children[this.#i]
      .querySelector(".bar")
      .classList.add("d-none");
  }

  imagesTotal() {
    return this.imagesTarget.children.length;
  }

  imageReplace() {
    const smallImg = this.imagesTarget.children[this.#i]
      .querySelector("img")
      .cloneNode(true);
    const bigImg = this.mainTarget.querySelector("img");
    bigImg.replaceWith(smallImg);
  }
}
