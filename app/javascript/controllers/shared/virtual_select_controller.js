import {Controller} from "@hotwired/stimulus"
import { VirtualSelect } from "virtual-select-plugin/src/virtual-select";
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="shared--virtual-select"
export default class extends Controller {
  async connect() {
    let _this = this

    VirtualSelect.init(
      {
      ele: this.element,
      search: true,
      alwaysShowSelectedOptionsCount: true,
      placeholder: this.element.dataset.placeholder,
      multiple: JSON.parse(this.element.dataset.multiple)
    })
  }
}
