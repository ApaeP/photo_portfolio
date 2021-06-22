require("@rails/ujs").start()
import "@hotwired/turbo-rails"
require("@rails/activestorage").start()
require("channels")

import 'controllers'

// import 'swiper/swiper-bundle.css';
import "tailwindcss/tailwind.css"

$(document).on('turbolinks:load', function() {

});

import "controllers"
