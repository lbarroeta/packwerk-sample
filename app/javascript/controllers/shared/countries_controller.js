import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from '@rails/request.js'

// Connects to data-controller="shared--countries"
export default class extends Controller {
  async getStates() {
    let _this = this.element

    const requiredCountry = this.element.value
    const url = `/countries/states?country=${requiredCountry}`
    const request = new FetchRequest('get', url, { responseKind: 'json'})

    const response = await request.perform()

    if (response.ok) {
      const responseBody = await response.json

      if (responseBody.states.length > 0) {
        const dropdown = $('#states-select')
        // // dropdown.find('option').remove()

        JSON.parse(responseBody.states, (key, value) => {

          dropdown.append(`<option value=${key}>${value}</option>`)
          dropdown.removeAttr('disabled')
        })
      }
    }
  }

  async getCities() {
    let _this = this.element

    const requiredCountry = document.getElementById('customer_address_attributes_country').value
    const requiredState = this.element.value

    const url = `/countries/cities?country=${requiredCountry}&state=${requiredState}`
    const request = new FetchRequest('get', url, { responseKind: 'turbo-stream'})
    const response = await request.perform()

    if (response.ok) {
      const responseBody = await response.json

      if (responseBody.states.length > 0) {
        const dropdown = $('#cities-select')
        dropdown.find('option').remove()

        JSON.parse(responseBody.states, (key, value) => {

          dropdown.append(`<option value=${value}>${value}</option>`)
          dropdown.removeAttr('disabled')
        })
      }
    }
  }
}
