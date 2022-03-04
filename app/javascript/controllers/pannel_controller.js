import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["profile", "applications", "users", "pages"];

  connect() {
    console.log("loaded");
  }

  select(event) {
    const num = this.tabStyleSwitch(event);
    this.chosePage(num);
  }

  tabStyleSwitch(event) {
    const tabSelected = event.target;
    const tabs = Array.from(event.target.parentNode.children);

    tabs.forEach((tab) => {
      tab.classList.remove("active");
    });
    tabSelected.classList.add("active");

    return tabs.indexOf(tabSelected);
  }

  chosePage(num) {
    console.log(this.pagesTarget);
    const pageSelected = this.pagesTarget.children[num];

    const pages = Array.from(this.pagesTarget.children);

    pages.forEach((page) => {
      page.classList.add("d-none");
    });
    pageSelected.classList.remove("d-none");
  }
}
