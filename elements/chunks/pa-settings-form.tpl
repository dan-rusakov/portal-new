<form class="settings-form grid" action="" method="post" id="office-profile-form" enctype="multipart/form-data">
	<input type="hidden" name="photo" value="{$photo}"/>
  <input type="file" name="newphoto" id="profile-photo" class="hidden"/>

	<div class="settings-form__2-col-box grid">
		<p class="settings-form__title settings-form__title_wide">Личные данные:</p>
		<div class="settings-form__input-box">
			<input type="text" name="username" value="{$username}" placeholder="Логин" class="form-control settings-form__input"/>
			<i class="icon-form-name"></i>
		</div>
		<div class="settings-form__input-box">
			<input type="text" name="fullname" value="{$fullname}" placeholder="Имя и фамилия" class="form-control settings-form__input"/>
			<i class="icon-form-name"></i>
		</div>
		<div class="settings-form__input-box">
			<input type="text" name="email" value="{$email}" placeholder="Email" class="form-control settings-form__input"/>
			<i class="icon-form-email"></i>
		</div>
		<div class="settings-form__input-box">
			<input type="text" name="mobilephone" placeholder="Телефон" value="{$mobilephone}" class="form-control settings-form__input"/>
			<i class="icon-form-phone"></i>
		</div>
	</div>
	<div class="settings-form__photo-box grid">
		<p class="settings-form__title">Фото профиля:</p>
		<div class="settings-form__photo-inner grid">
			<div class="settings-form__img-box"><img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" id="profile-user-photo" class="rounded-circle settings-form__img" data-gravatar="assets/img/default-img.jpg?s=100" width="100"/></div>
			<a href="#" class="settings-form__add-photo-btn"><label for="profile-photo">Добавить фото</label></a>
			<a href="#" class="settings-form__remove-photo-btn" id="office-user-photo-remove"{if !$photo} style="display:none;"{/if}>Удалить фото</a>
		</div>
	</div>
	<div class="settings-form__2-col-box grid">
		<p class="settings-form__title settings-form__title_wide">Смена пароля:</p>
		<div class="settings-form__input-box-password">
			<input type="password" name="specifiedpassword" value="" placeholder="Новый пароль" class="form-control settings-form__input-password"/>
			<i class="icon-close-eye"></i>
		</div>
		<div class="settings-form__input-box-password">
			<input type="password" name="confirmpassword" value="" placeholder="Повтор пароля" class="form-control settings-form__input-password"/>
			<i class="icon-eye"></i>
		</div>
		<p class="settings-form__input-desc">Длина пароля должна быть не менее 8 символов</p>
	</div>
	
		<div class="settings-form__checkbox-inner">
			<input type="checkbox" name="notification" id="notification" class="settings-form__checkbox">
			<label for="notification" class="settings-form__checkbox-label grid">
				<p class="settings-form__checkbox-text grid">Напоминать о ближайших мероприятиях</p>
			</label>
		</div>
	</div>
	<div class="settings-form__box settings-form__policy-box grid">
		<p class="settings-form__policy">Внося изменения в персональную информацию, я соглашаюсь с условиями политики</p>
	</div>
	<div class="settings-form__box">
		<button type="submit" class="settings-form__save-btn main-btn">Сохранить изменения</button>
	</div>
	<div class="settings-form__mailing-box grid">
		<p class="settings-form__title">Настройки рассылок:</p>
		<div class="settings-form__checkbox-inner">
			<input type="checkbox" name="mailing" id="mailing" class="settings-form__checkbox">
			<label for="mailing" class="settings-form__checkbox-label grid">
				<p class="settings-form__checkbox-text grid">Отписаться от рассылки</p>
			</label>
			[[!Sendex? 
				&id=`1`
				&tplUnsubscribe=`unsubscribe-box`  
			]]
		</div>
</form>
	