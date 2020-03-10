require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { initHomeCarousels } from '../components/homecarousels';

// initHomeCarousels();

$(document).on('turbolinks:load', function() {
});

  // var swiper = new Swiper('.pro-swiper-container', {
  //   loop: true,
  //   speed: 1800,
  //   effect: 'fade',
  //   autoplay: {
  //     delay: 3000,
  //     disableOnInteraction: false,
  //   }
  // });
  // var swiper = new Swiper('.project-swiper-container', {
  //   loop: true,
  //   speed: 1800,
  //   effect: 'fade',
  //   autoplay: {
  //     delay: 3000,
  //     disableOnInteraction: false,
  //   }
  // });
