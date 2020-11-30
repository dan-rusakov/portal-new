if (document.querySelector('.js--material-popup')) {
  const popupsBtns = Array.from(document.querySelectorAll('[data-material-popup-btn]'));
  const materialsPopups = Array.from(document.querySelectorAll('.js--material-popup'));

  materialsPopups.forEach(popup => {
    popup.addEventListener('click', (evt) => {
      if (evt.target === evt.currentTarget) {
        evt.target.classList.remove('active');
      }
    });
  });

  popupsBtns.forEach(popupBtn => {
    popupBtn.addEventListener('click', function(evt) {
      evt.preventDefault();

      const materialsPopups = Array.from(document.querySelectorAll('.js--material-popup'));
      const popupEl = document.querySelector(this.hash);

      materialsPopups.forEach(popup => {
        popup.classList.remove('active');
      });
      popupEl.classList.add('active');
    });
  })
}
