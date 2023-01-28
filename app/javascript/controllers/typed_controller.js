import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Le site n°1 de location", "de vaisseaux", "dans la Voie lactée"],
      typeSpeed: 50,
      loop: true
    })
  }
}
