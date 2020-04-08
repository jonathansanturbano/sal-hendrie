import Swiper from 'swiper';

const initSwiper = () => {
  var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    speed: 1000,
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

export { initSwiper };
