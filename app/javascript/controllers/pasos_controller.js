import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  search() {
    console.log("Searching", this.element)
  }
}
