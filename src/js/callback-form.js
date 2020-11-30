if (document.querySelector('.js--callback-form')) {
  const callbackForm = document.querySelector('.js--callback-form');
  const liceneAgreement = document.querySelector('.js--callback-licence-agreement');
  const submitBtn = document.querySelector('.js--callback-sumbit-btn');

  liceneAgreement.addEventListener('change', function() {
    submitBtn.disabled = !this.checked;
  });


  callbackForm.addEventListener('submit', (evt) => {
    evt.preventDefault();

    if (!liceneAgreement.checked) return false;

    const data = new FormData(callbackForm);

    fetch('/assets/callback.php', {
      method: 'POST',
      body: data,
    })
      .then(() => {
        submitBtn.textContent = 'Отправлено';
      })
      .catch(err => {
        console.log(err);
      });
  });
}
