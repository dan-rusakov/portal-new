if (document.querySelector('.js--burger-menu')) {
  const burger = document.querySelector('.js--burger-btn');
  const burgerMenu = document.querySelector('.js--burger-menu');

  burger.addEventListener('click', (evt) => {
    if (evt.currentTarget.classList.contains('header__burger--active')) {
      evt.currentTarget.classList.remove('header__burger--active');
      burgerMenu.style.display = 'none';
    } else {
      evt.currentTarget.classList.add('header__burger--active');
      burgerMenu.style.display = 'block';
    }
  });
}
