import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "query", "paso" ]

    matches_query(text) {
        return text.search(this.query) != -1
    }

    search() {
        this.pasoTargets.forEach(element => {
            element.hidden = !this.matches_query(element.textContent)
        })
    }

    get query() {
        return this.queryTarget.value
    }


}
