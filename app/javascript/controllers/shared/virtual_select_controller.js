import { Controller } from "@hotwired/stimulus"
import { VirtualSelect } from "virtual-select-plugin/src/virtual-select";
import { get } from '@rails/request.js'

// Connects to data-controller="shared--virtual-select"
export default class extends Controller {
  connect() {
    let _this = this

    const values = this.getValues(this.element)

    VirtualSelect.init(
      {
      ele: this.element,
      search: true,
      alwaysShowSelectedOptionsCount: true,
      placeholder: this.element.dataset.placeholder,
      multiple: JSON.parse(this.element.dataset.multiple)
    })
  }

  getValues(element) {
    debugger
    const url = element.dataset.url

    const response = get(url, {
      contentType: 'application/json'
    })

    if (response.ok) {
      debugger
    }
  }
}
