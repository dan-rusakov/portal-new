<div class="restore-password-popup js--restore-password-popup-box" id="office-auth-form">
	<h4 class="restore-password-popup__title">Восстановление пароля</h4>
	<p class="restore-password-popup__text">Введите свою почту или номер телефона, и мы вышлем вам ссылку на восстановление доступа</p>
	<form class="restore-password-popup__form" method="post" id="office-auth-login">
		<input
			type="email"
			class="text-input restore-password-popup__input"
			placeholder="Почта"
			name="email"
			id="office-auth-login-email"
			value=""
		>
		<input type="hidden" name="password" id="office-login-form-password" value=""/>
		<input type="hidden" name="action" value="auth/formLogin"/>
    <input type="hidden" name="return" value=""/>
		<button class="restore-password-popup__submit-btn" type="submit">Восстановить</button>
	</form>
</div>