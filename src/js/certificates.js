if (document.querySelector('.js--certificates-gallery')) {
  new Swiper('.js--certificates-gallery .swiper-container', {
    slidesPerView: 4,
    spaceBetween: 20,
    navigation: {
      prevEl: '.certificates__gallery-btn--prev',
      nextEl: '.certificates__gallery-btn--next',
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      602: {
        slidesPerView: 2,
      },
      769: {
        slidesPerView: 3,
      },
      992: {
        slidesPerView: 4,
      }
    }
  });

  if (document.querySelector('#lightgallery')) {
    lightGallery(document.querySelector('#lightgallery'), {
      loop: false,
      download: false,
    });
  }
}
