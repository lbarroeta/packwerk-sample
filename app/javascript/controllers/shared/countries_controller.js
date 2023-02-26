import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="shared--countries"
export default class extends Controller {
  async getStates() {
    let _this = this.element

    const requiredCountry = this.element.value
    const url = `/countries/states?country=${requiredCountry}`
    const request = new FetchRequest('get', url)
    const response = await request.perform()

    return await response.json
  }
}
