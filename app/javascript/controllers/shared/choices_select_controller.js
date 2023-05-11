import { Controller } from "@hotwired/stimulus"
import Choices from "choices.js";

// Connects to data-controller="shared--choices-select"
export default class extends Controller {
  connect() {
    let _this = this

    new Choices(this.element, {
        allowHTML: true
      }
    )
  }
}
