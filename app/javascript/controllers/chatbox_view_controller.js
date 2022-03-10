import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["pages", "tabs"];

  connect() {
    console.log(this.pagesTarget);
    this.initialTab(0);
  }

  select(event) {
    const num = this.tabStyleSwitch(event);
    this.chosePage(num);
  }

  initialTab(num) {
    const tabSelected = this.tabsTarget.children[num];
    const pageSelected = this.pagesTarget.children[num];
    tabSelected.classList.add("active");
    pageSelected.classList.remove("d-none");
  }

  tabStyleSwitch(event) {
    const tabSelected = event.target.classList.contains("tab")
      ? event.target
      : event.target.parentNode;

    const tabs = Array.from(tabSelected.parentNode.children);
    tabs.forEach((tab) => {
      tab.classList.remove("active");
    });
    tabSelected.classList.add("active");
    console.log(tabs);
    console.log(tabSelected);
    return tabs.indexOf(tabSelected);
  }

  chosePage(num) {
    const pageSelected = this.pagesTarget.children[num];

    const pages = Array.from(this.pagesTarget.children);
    pages.forEach((page) => {
      page.classList.add("d-none");
    });
    pageSelected.classList.remove("d-none");
  }
}
