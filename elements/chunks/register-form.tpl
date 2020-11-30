<div class="auth-popup js--auth-popup-box" id="office-auth-form">
	<header class="auth-popup__header">
		<button
			class="auth-popup__header-btn js--registration-form-btn"
		>Регистрация</button>
		<button
			class="auth-popup__header-btn js--login-form-btn"
		>Вход</button>
	</header>
	<form
		class="auth-popup__registration-form js--registration-form"
		method="post"
		id="office-auth-register"
	>
		<p class="auth-popup__description">Для регистрации, пожалуйста, заполните форму:</p>
		<input
			type="hidden"
			class="text-input auth-popup__input"
			name="username"
			placeholder="Логин"
			id="office-register-form-username"
			value=""
		>
		<input
			type="text"
			class="text-input auth-popup__input"
			required
			name="fullname"
			placeholder="Имя и Фамилия"
			id="office-register-form-fullname"
			value=""
			pattern="^[A-Za-zА-Яа-яЁё\s]+$"
		>
		<input
			type="text"
			class="text-input
			auth-popup__input"
			required
			name="email"
			placeholder="Почта"
			id="office-auth-register-email"
			value=""
		>
		<input
			type="text"
			class="text-input auth-popup__input"
			name="mobilephone"
			placeholder="Телефон"
			id="office-auth-register-phone"
			value=""
		>
		<input
			type="password"
			name="password"
			id="office-register-form-password"
			required
			value=""
			placeholder="Пароль"
			class="text-input auth-popup__input"
		>
		<input type="hidden" name="action" value="auth/formRegister"/>
		<p class="auth-popup__policy-text">Нажимая на кнопку, я даю согласие на обработку моих персональных данных</p>
		<button class="auth-popup__submit-btn" type="submit">Зарегистрироваться</button>
	</form>
	<form
		class="auth-popup__login-form js--login-form"
		method="post"
		id="office-auth-login"
	>
		<p class="auth-popup__description">Войдите, чтобы продолжить обучение:</p>
		<input
			type="text"
			class="text-input auth-popup__input"
			required
			name="username"
			placeholder="Логин"
			id="office-auth-login-username"
			value=""
		>
		<input
			type="password"
			class="text-input auth-popup__input"
			required
			name="password"
			placeholder="Пароль"
			id="office-login-form-password"
			value=""
		>
		<input type="hidden" name="action" value="auth/formLogin"/>
    <input type="hidden" name="return" value=""/>
		<button class="auth-popup__forgot-password-btn js--restore-password-popup-btn" type="button">
			Я не помню пароль
		</button>
		<button class="auth-popup__submit-btn" type="submit">Войти</button>
	</form>
	<footer class="auth-popup__footer">
		<p class="auth-popup__footer-text">
			Вы можете войти через соцсети:
			[[!HybridAuth?
				&groups=`Users:1`
				&loginResourceId=`1`
				&providers=`Facebook,Vkontakte`
			]]
			<!--<a href="#!" class="auth-popup__login-by-social-url">Vk</a>
			<a href="#!" class="auth-popup__login-by-social-url">Facebook</a>-->
		</p>
	</footer>
</div>