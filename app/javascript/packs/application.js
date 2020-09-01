import "bootstrap";
import { initModalOnClick } from '../components/modal';
import { initSwiper } from '../components/swiper';
import { initCart } from '../components/cart';
// import { initCart } from '../components/cart';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

document.addEventListener('turbolinks:load', () => {
  initModalOnClick();
  initSwiper();
  if (document.querySelector('.add'))
  initCart();
});
