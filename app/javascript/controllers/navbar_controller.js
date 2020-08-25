import ApplicationController from './application_controller'

export default class extends ApplicationController {
  toggle() {
  	this.element.getElementsByTagName("button")[0].classList.toggle("active");
    document.getElementById("sidebar").classList.toggle("active");
  }
}
