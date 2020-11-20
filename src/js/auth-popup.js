if (document.querySelector('.js--auth-popup')) {
  const authPopupBtn = document.querySelector('.js--auth-popup-btn');
  const authPopup = document.querySelector('.js--auth-popup');
  const registrationFormBtn = document.querySelector('.js--registration-form-btn');
  const registrationForm = document.querySelector('.js--registration-form');
  const loginFormBtn = document.querySelector('.js--login-form-btn');
  const loginForm = document.querySelector('.js--login-form');
  const restorePopupBtn = document.querySelector('.js--restore-password-popup-btn');
  const restorePopup = document.querySelector('.js--restore-password-popup');

  registrationFormBtn.addEventListener('click', () => {
    registrationFormBtn.classList.add('active');
    loginFormBtn.classList.remove('active');
    registrationForm.classList.add('active');
    loginForm.classList.remove('active');
  });

  loginFormBtn.addEventListener('click', () => {
    registrationFormBtn.classList.remove('active');
    loginFormBtn.classList.add('active');
    registrationForm.classList.remove('active');
    loginForm.classList.add('active');
  });

  authPopupBtn.addEventListener('click', () => {
    authPopup.classList.add('active');
  });

  authPopup.addEventListener('click', (evt) => {
    if (!evt.target.closest('.js--auth-popup-box')) {
      authPopup.classList.remove('active');
    }
  });

  restorePopupBtn.addEventListener('click', () => {
    if (restorePopup) {
      authPopup.classList.remove('active');
      restorePopup.classList.add('active');
    }
  });
}
