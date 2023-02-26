import {Controller} from "@hotwired/stimulus"
import { VirtualSelect } from "virtual-select-plugin/src/virtual-select";
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="shared--virtual-select"
export default class extends Controller {
  async connect() {
    let _this = this

    const optionValues = await this.getValues(this.element)

    VirtualSelect.init(
      {
      ele: this.element,
      search: true,
      alwaysShowSelectedOptionsCount: true,
      placeholder: this.element.dataset.placeholder,
      multiple: JSON.parse(this.element.dataset.multiple),
      options: optionValues
    })
  }

  async getValues(element) {
    const url = element.dataset.url

    const request = new FetchRequest('get', url)
    const response = await request.perform()

    return await response.json
  }
}
