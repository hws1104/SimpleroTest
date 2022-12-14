// Entry point for the build script in your package.json
// Inject a header into Turbo Drive requests so the nonce generation code works
// document.addEventListener('turbo:before-fetch-request', (event) => {
//     // Turbo Drive does not send a referrer like turbolinks used to, so let's simulate it here
//     event.detail.fetchOptions.headers['Turbo-Referrer'] = window.location.href
//     event.detail.fetchOptions.headers['X-Turbo-Nonce'] = $("meta[name='csp-nonce']").prop('content')
// })
// // Because nonces can only be accessed via their IDL attribute after the page
// // loads (for security reasons), they need to be read via JS and added back as normal attributes
// // in the DOM before the page is cached otherwise on cache restoration visits, the nonces won’t be there!
// document.addEventListener("turbo:before-cache", function() {
//     let scriptTagsToAddNonces = document.querySelectorAll("script[nonce]");
//     for (var element of scriptTagsToAddNonces) {
//         element.setAttribute('nonce', element.nonce);
//     }
// });

import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"

// sub directory
import './src/plugins';


function toggleNavbar(collapseID){
    document.getElementById(collapseID).classList.toggle("hidden");
    document.getElementById(collapseID).classList.toggle("flex");
}

// Document turbo:load event
document.addEventListener("turbo:load", function() {
    // Toggle navbar on click
    document.getElementById("navbar-toggle").addEventListener("click", function() {
        // get collapse ID from data-toggle-id attribute from the clicked element
        var collapseID = this.dataset.toggleId;
        toggleNavbar(collapseID);
    } );
});