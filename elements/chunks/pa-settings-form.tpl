<form class="profile-settings__content-box" action="" method="post" id="office-profile-form" enctype="multipart/form-data">
	<input type="hidden" name="photo" value="{$photo}"/>
  <input type="file" name="newphoto" id="profile-photo" class="hidden"/>
	<div class="profile-settings__left-box">
		<input type="text" class="text-input profile-settings__input" name="username" value="{$username}" placeholder="Логин">
		<input type="text" class="text-input profile-settings__input" name="fullname" value="{$fullname}" placeholder="Имя и фамилия">
		<input type="text" class="text-input profile-settings__input" name="email" value="{$email}" placeholder="Email">
		<input type="text" class="text-input profile-settings__input" name="mobilephone" value="{$mobilephone}" placeholder="Телефон">
		<input type="text" class="text-input profile-settings__input" type="password" name="specifiedpassword" value="" placeholder="Новый пароль">
		<input type="text" class="text-input profile-settings__input" type="password" name="confirmpassword" value="" placeholder="Повтор пароля">
		<p class="profile-settings__description">
			Внося изменения в персональную информацию, я соглашаюсь с условиями политики
		</p>
		<button class="profile-settings__save-btn" type="submit">Сохранить</button>
	</div>
	<div class="profile-settings__right-box">
		<div class="profile-settings__photo-wrap">
			<img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="profile-settings__photo" id="profile-user-photo" data-gravatar="assets/img/default-img.jpg?s=100">
		</div>
		<a href="#" class="profile-settings__add-photo-btn"><label for="profile-photo">Добавить фото</label></a>
		<a href="#" class="profile-settings__add-photo-btn" id="office-user-photo-remove"{if !$photo} style="display:none;"{/if}>Удалить фото</a>
		<label class="callback-section__checkbox-label">
			<input type="checkbox" class="callback-section__checkbox-input visually-hidden" name="notification" id="notification">
			<span class="callback-section__checkbox"></span>
			<p class="callback-section__licence-text">
				Напоминать о ближайших мероприятиях
			</p>
		</label>
	</div>
</form>
	