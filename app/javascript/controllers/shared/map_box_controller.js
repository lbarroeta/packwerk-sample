import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

// Connects to data-controller="shared--map-box"
export default class extends Controller {
  connect() {
    this.public_token = 'pk.eyJ1IjoibGJhcnJvZXRhIiwiYSI6ImNsYmw5bGpibDA1Z2ozeHF4OGE2eXF1MTIifQ.rzy8s8xk_gH2PqyM8ZLR5A'

    // this.initializeMap()
  }

  initializeInput() {
    this.initializeMap()

    const autocomplete = new PlacesAutocomplete({
      mapboxToken: this.public_token,
      mapInstance: this.mapbox,
      debounce: 300
    })

    const input = document.getElementsByClassName('input-padded-text')
    autocomplete.attachTo(input)
  }

  initializeMap() {
    mapboxgl.accessToken = this.public_token

    this.mapbox = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://style/mapbox/streets-v11",
      center: [-74.5, 40],
      zoom: 9,
      projection: "globe"
    })
  }

  flyTo() {
    this.mapbox.flyTo({

    })
  }
}
