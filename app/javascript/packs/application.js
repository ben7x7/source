// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';

//import {navSlide} from '../components/navbar.js';
import {matrix} from '../components/matrix.js';
import {animationText} from '../components/animation_text.js';
import {animationCard} from '../components/animation_card.js';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  //navSlide();
  animationCard();
  animationText();
  matrix();

});
