import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';

const initSwiper = () => {
  if (document.querySelector('.fanart-author')) {
    console.log('fanart');

    var fanSwiper = new Swiper ('.swiper-container', {
      // Optional parameters
      speed: 1000,
      loop: true,
      roundLengths: true,
      // spaceBetween: 200,
      autoplay: {
              delay: 2500,
              disableOnInteraction: false,
            },
      // If we need pagination
      pagination: {
        el: '.swiper-pagination',
        type: 'fraction',
      },

      // Navigation arrows
      // navigation: {
      //   nextEl: '.swiper-button-next',
      //   prevEl: '.swiper-button-prev',
      // },

      // And if we need scrollbar
    })
  }

  if (document.querySelector('.button').textContent === 'ORDER SIGNED BOOKS') {
    console.log('hello');
    var swiper = new Swiper('.swiper-container', {
      speed: 1000,
      loop: true,
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  }

  if (document.querySelector('.book-details')) {
    var homeSwiper = new Swiper ('.swiper-container', {
      // Optional parameters
      // speed: 1000,
      loop: true,
      roundLengths: true,
      spaceBetween: 200,
      autoplay: {
              delay: 2500,
              disableOnInteraction: false,
            },
      // If we need pagination
      pagination: {
        el: '.swiper-pagination',
      },

      // Navigation arrows
      // navigation: {
      //   nextEl: '.swiper-button-next',
      //   prevEl: '.swiper-button-prev',
      // },

      // And if we need scrollbar
    })
  }
}

export { initSwiper };
