if (document.querySelector('.js--restore-password-popup')) {
  const restorePopup = document.querySelector('.js--restore-password-popup');

  restorePopup.addEventListener('click', (evt) => {
    if (!evt.target.closest('.js--restore-password-popup-box')) {
      restorePopup.classList.remove('active');
    }
  });
}
