if (document.querySelector('.js--program-module-btn')) {
  const openBtn = Array.from(document.querySelectorAll('.js--program-module-btn'));

  openBtn.forEach(btn => {
    btn.addEventListener('click', function() {
      if (this.classList.contains('active')) {
        const content = this.parentElement.parentElement.querySelector('.js--program-module-content');
        content.classList.remove('active');
        this.classList.remove('active');
      } else {
        const content = this.parentElement.parentElement.querySelector('.js--program-module-content');
        content.classList.add('active');
        this.classList.add('active');
      }
    });
  })
}
