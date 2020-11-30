if (document.querySelector('.js--certificates-gallery')) {
  new Swiper('.js--certificates-gallery .swiper-container', {
    slidesPerView: 4,
    spaceBetween: 20,
    navigation: {
      prevEl: '.certificates__gallery-btn--prev',
      nextEl: '.certificates__gallery-btn--next',
    },
  });
}

if (document.querySelector('#lightgallery')) {
  lightGallery(document.querySelector('#lightgallery'), {
    loop: false,
    download: false,
  });
}
