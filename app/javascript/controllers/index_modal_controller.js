import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="index-modal"
export default class extends Controller {
  connect() {
    console.log("I am connected");
  }
}
