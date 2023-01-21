import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {

  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    // console.log("apiKey", this.apiKeyValue)
    // console.log("markers", this.markersValue)

    // AUTHENTIFY with MAPBOX API
    // LAUNCH MAPBOX on DIV
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      // style: "mapbox://styles/mapbox/streets-v10",
      style: "mapbox://styles/c-brun0/cld5zga71002f01p4gjon3krp"
    })
    this.#addMarkersToMap()
    // this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
    }))
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      // customMarker.className = "marker"
      // customMarker.style.backgroundImage = 'url('${marker.image_url}')'
      // customMarker.style.backgroundSize = 'contain'
      // customMarker.style.width = "25px"
      // customMarker.style.height = "25px"

      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  // #fitMapToMarkers() {
  //   const bounds = new mapboxgl.LngLatBounds()
  //   this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
  //   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  // }
}
