require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { initModalOnClick } from '../components/modal';
import { initSwiper } from '../components/swiper';
import { initCart } from '../components/cart';
import 'swiper/swiper.scss';


document.addEventListener('turbolinks:load', () => {
  initModalOnClick();
  initSwiper();
  if (document.querySelector('.add'))
  initCart();
});
