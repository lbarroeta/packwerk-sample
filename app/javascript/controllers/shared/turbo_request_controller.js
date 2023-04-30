import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shared--turbo-request"
export default class extends Controller {
  initialize() {
    this.element.setAttribute('data-action', 'click->shared--turbo-request#click')
  }

  click(e) {
    e.preventDefault()

    this.url = this.element.getAttribute('href')

    fetch(this.url, {
      headers: {
        Accept: 'text/vnd.turbo-stream.html'
      }
    }).then(response => response.text())
      .then(html => Turbo.renderStreamMessage(html))
  }
}
