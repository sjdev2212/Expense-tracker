
import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modals"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!")
  }
  close(e) {
    // Prevent default action
    e.preventDefault();
    // Remove from parent
    const modal = document.getElementById("modal");
    modal.appendChild = `<div"> <p> Hola manola</p> </div>`


    // Remove the src attribute from the modal
 

 
  }
}