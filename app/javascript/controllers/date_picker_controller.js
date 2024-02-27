import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="date-picker"
export default class extends Controller {
  static targets = ['input', 'start', 'end']

  connect() {
    console.log('date picker loaded');
    flatpickr(this.inputTarget, {
      mode: 'range',
      enableTime: true
    });
  }

  processDateChange() {
    const dateRangeValue = this.inputTarget.value;
    const startDate = dateRangeValue.split(' to ')[0];
    const endDate = dateRangeValue.split(' to ')[1];
    this.startTarget.value = startDate;
    this.endTarget.value = endDate;
  }
}
