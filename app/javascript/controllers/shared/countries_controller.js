import { Controller } from "@hotwired/stimulus"
import { VirtualSelect } from "virtual-select-plugin/src/virtual-select";
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="shared--countries"
export default class extends Controller {
  async getStates() {
    let _this = this.element

    const requiredCountry = this.element.value
    const url = `/countries/states?country=${requiredCountry}`
    const request = new FetchRequest('get', url, { responseKind: 'turbo-stream'})

    await request.perform()
  }

  async getCities() {
    let _this = this.element

    const requiredCountry = document.getElementById('customer_address_country').value
    const requiredState = this.element.value
    const url = `/countries/cities?country=${requiredCountry}&state=${requiredState}`
    const request = new FetchRequest('get', url, { responseKind: 'turbo-stream'})
    await request.perform()
  }
}
