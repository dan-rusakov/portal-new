<div class="login-popup__wrapper grid" id="office-auth-form">
		<button class="login-popup__tab-box" style="border: none;">
				<p class="login-popup__tab-title">Регистрация</p>
		</button>
		<button class="login-popup__tab-box active" style="border: none;">
				<p class="login-popup__tab-title">Вход</p>
		</button>
		<form class="login-popup__register-form grid" method="post" id="office-auth-register">
			<p class="login-popup__form-text">Для регистрации, пожалуйста, заполните форму:</p>
			<div class="login-popup__input-box">
					<i class="login-popup__input-icon icon-man"></i>
					<input type="text" class="login-popup__register-input" required name="username" placeholder="Логин" id="office-register-form-username" value=""/>
			</div>
			<div class="login-popup__input-box">
					<input type="text" class="login-popup__register-input" required name="fullname" placeholder="Имя и Фамилия" id="office-register-form-fullname" value="" pattern="^[A-Za-zА-Яа-яЁё\s]+$"/>
			</div>
			<div class="login-popup__input-box">
					<i class="login-popup__input-icon icon-form-email"></i>
					<input type="email" class="login-popup__register-input" required name="email" placeholder="Почта" id="office-auth-register-email" value=""/>
			</div>
			<div class="login-popup__input-box">
					<i class="login-popup__input-icon icon-form-phone"></i>
					<input type="text" class="login-popup__register-input" name="mobilephone" placeholder="Телефон" id="office-auth-register-phone" value=""/>
			</div>
			<input type="hidden" name="action" value="auth/formRegister"/>
			<p class="login-popup__policy">Нажимая на кнопку, я даю согласие на обработку моих <a href="#" class="login-popup__policy-url">персональных данных</a></p>
			<button type="submit" class="login-popup__btn main-btn">Зарегистрироваться</button>
		</form>

		<form class="login-popup__login-form grid" method="post" id="office-auth-login">
				<p class="login-popup__form-text">Войдите, чтобы продолжить обучение:</p>
				<input type="text" class="login-popup__login-input" required name="username" placeholder="Логин" id="office-auth-login-username" value=""/>
				<input type="password" class="login-popup__login-input" required name="password" placeholder="Пароль" id="office-login-form-password" value=""/>
				<input type="hidden" name="action" value="auth/formLogin"/>
        <input type="hidden" name="return" value=""/>
				<a data-fancybox data-src="#restore-pass-popup" href="javascript:;" class="login-popup__forgot-password">Я не помню пароль</a>
				<button type="submit" class="login-popup__btn main-btn">Войти</button>
		</form>
		<div class="login-popup__soc-login-line">
				<p class="login-popup__soc-login-text">Вы можете войти через соцсети:</p>
				[[!HybridAuth?
					&groups=`Users:1`
					&loginResourceId=`1`
					&providers=`Facebook,Vkontakte`
				]]
		</div>
</div>