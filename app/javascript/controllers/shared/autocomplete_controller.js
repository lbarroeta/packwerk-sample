import { Controller } from "@hotwired/stimulus"

import { FetchRequest } from "@rails/request.js";


// Connects to data-controller="shared--autocomplete"
export default class extends Controller {
  async fetchResults() {
    let _this = this.element

    const searchText = this.element.value
    const url = `${this.element.dataset.url}?search_text=${searchText}`

    const ul = $('#autocomplete-list')

    if (searchText.length >= 3) {
      const request = new FetchRequest('get', url, { responseKind: 'json' })
      const response = await request.perform()

      if (response.ok) {
        const responseBody = await response.json
        // debugger

        if (responseBody.length > 0) {
          $(ul).empty()
          $(ul).show()

          responseBody.forEach((data) => {
            let li = document.createElement('li')

            let longitude = data.geometry.coordinates[0]
            let latitude = data.geometry.coordinates[1]
            let address = data.place_name
            let country = null
            let state = null
            let city = null

            data.context.forEach((values) => {
              if (values.id.includes('country')) {
                country = values.text
              }
            })

            data.context.forEach((values) => {
              if (values.id.includes('region')) {
                state = values.text
              }
            })

            data.context.forEach((values) => {
              if (values.id.includes('place')) {
                city = values.text
              }
            })

            li.innerHTML = address
            li.setAttribute('class', 'autocomplete-list-items')
            li.setAttribute('data-controller', 'shared--autocomplete')
            li.setAttribute('data-action', 'click->shared--autocomplete#selectedResult')
            li.setAttribute('data-address', address)
            li.setAttribute('data-latitude', latitude)
            li.setAttribute('data-longitude', longitude)
            li.setAttribute('data-country', country)
            li.setAttribute('data-state', state)
            li.setAttribute('data-city', city)

            ul.append(li)
          })
        }
      }
    } else if (searchText.length < 1) {
      $(ul).hide()
    }
  }

  selectedResult() {
    $('#autocomplete-list').hide()

    $('#search-field').val(this.element.dataset.address)
    $('#customer_address_attributes_country').val(this.element.dataset.country)
    $('#customer_address_attributes_latitude').val(this.element.dataset.latitude)
    $('#customer_address_attributes_longitude').val(this.element.dataset.longitude)
    $('#customer_address_attributes_state').val(this.element.dataset.state)
    $('#customer_address_attributes_city').val(this.element.dataset.city)

  }
}
