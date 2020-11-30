<!DOCTYPE html>
<html lang="ru">

<head>

	<meta charset="utf-8">

	<title>[[*pagetitle]]</title>
	<meta name="description" content="[[*meta_description]]">
	<meta name="keywords" content="">
	
    <base href="/">

	<meta property="og:image" content="path/to/image.jpg">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
	<style>body { opacity: 0; overflow-x: hidden; } html { background-color: #fff; }</style>
	<link rel="stylesheet" href="assets/css/main.min.css?ver=1.1.0">
	<meta name="yandex-verification" content="ca112c737c740cfb" />
	<style>
	.services__filter:not(:last-child) {
		margin-bottom: 40px;
	}
	.course-item__price {
		margin-right: 0;
	}
	.course-item__price-box {
		text-align: right;
	}
	.course-item__url {
		font-family: "gothamPro", sans-serif;
		font-weight: bold;
		font-size: 14px;
		text-decoration: none;
		color: #f4656d;
		display: none;
		background-color: transparent;
		border: none;
	}
	.course-item__input {
		align-self: center;
		margin-left: 15px;
	}
	@media only screen and (max-width: 767px) {
		.pa-wrapper>div {
			grid-template-columns: 1fr;
		}

		.services__filter:not(:last-child) {
			margin-bottom: 20px;
		}
		.login-popup__tab-title {
				font-size: 1.35em;
		}
	}	
	</style>
	<script src="https://api-maps.yandex.ru/2.1/?apikey=ea935c89-e746-4efb-8860-b16da130ea77&lang=ru_RU" type="text/javascript"></script>

</head>

<body>
[[!addLooked?
	&templates = `20,36,18`
]]
{if $_modx->isAuthenticated()}
	[[!login_handler]]
{/if}

{if $_modx->isAuthenticated()}
{$_modx->getChunk('pa-header')}
{else}
{$_modx->getChunk('header')}
{/if}

<main id="app">
	{block 'main'}{/block}
</main>

<footer class="footer">
    <div class="container grid">
        <ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(17)}" class="footer-menu__url">Психолого-педагогическая поддержка</a></li>
        </ul>
        <ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(18)}" class="footer-menu__url">Здоровье</a></li>
        </ul>
        <ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(19)}" class="footer-menu__url">Расписание</a></li>
        </ul>
        <ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(6)}" class="footer-menu__url">Обучение</a></li>
        </ul>
				<ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(16)}" class="footer-menu__url">О проекте</a></li>
        </ul>
        <div class="footer-line"></div>
        <ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(2)}" class="footer-menu__url">Обзоры</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(3)}" class="footer-menu__url">Детские магазины</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(4)}" class="footer-menu__url">Детские учреждения</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(5)}" class="footer-menu__url">Досуг</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(132)}" class="footer-menu__url">ВУЗы</a></li>
        </ul>
				<ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(11)}" class="footer-menu__url">Библиотека</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(14)}" class="footer-menu__url">Фильмы</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(12)}" class="footer-menu__url">Книги</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(13)}" class="footer-menu__url">Документы</a></li>
            <li class="footer-menu__text"><a href="{$_modx->makeUrl(9)}" class="footer-menu__url">Блог</a></li>
        </ul>
				<ul class="footer-menu">
            <li class="footer-menu__title"><a href="{$_modx->makeUrl(21)}" class="footer-menu__url">Контакты</a></li>
        </ul>
        <div class="footer-payment-box">
            <img src="assets/img/visa-icon.jpg" alt="visa" class="footer-payment-box__img">
            <img src="assets/img/mastercard-icon.jpg" alt="mastercard" class="footer-payment-box__img">
        </div>
        <div class="footer-social-box">
            <a href="[[pdoField? &id=`21` &field=`contactInst`]]" class="footer-social-box__url"><img src="assets/img/instagram-icon.png" alt="instagram" class="footer-social-box__img"></a>
            <a href="[[pdoField? &id=`21` &field=`contactVk`]]" class="footer-social-box__url"><img src="assets/img/vk-icon.png" alt="vk" class="footer-social-box__img"></a>
            <a href="[[pdoField? &id=`21` &field=`contactYoutube`]]" class="footer-social-box__url"><img src="assets/img/youtube-icon.png" alt="youtube" class="footer-social-box__img"></a>
        </div>
    </div>
</footer>

<div style="display: none;" id="subscribe-popup" class="subscribe-popup">
	<p class="subscribe-popup__title">Заполните форму:</p>
	<form class="main-form subscribe-popup__form grid">
		<label for="" class="main-form__input-inner subscribe-popup__input-inner">
			<i class="icon-form-name"></i>
			<input type="text" class="main-form__input subscribe-popup__input" placeholder="Имя">
		</label>
		<label for="" class="main-form__input-inner subscribe-popup__input-inner">
			<i class="icon-form-name"></i>
			<input type="text" class="main-form__input subscribe-popup__input" placeholder="Фамилия">
		</label>
		<label for="" class="main-form__input-inner subscribe-popup__input-inner">
			<i class="icon-form-email"></i>
			<input type="text" class="main-form__input subscribe-popup__input" placeholder="Email">
		</label>
		<label for="" class="main-form__input-inner subscribe-popup__input-inner">
			<i class="icon-form-phone"></i>
			<input type="text" class="main-form__input subscribe-popup__input" placeholder="Телефон">
		</label>
		<p class="main-form__personal-data subscribe-popup__personal-data">Нажимая на кнопку, я даю согласие на обработку моих <a href="#" class="main-form__personal-data-link subscribe-popup__personal-data-link">персональных данных</a></p>
		<input type="submit" value="Записаться" class="main-btn subscribe-popup__btn">
	</form>
</div>
<div class="success-register" id="success-register" style="display: none;">
	<p class="success-register__title">Регистрация прошла успешно</p>
	<p class="success-register__text">Мы отправили Вам пароль, на указанную Вами почту, обязательно нужно проверить папку спам, но при желании Вы можете его самостоятельног поменять в настройках личного кабинета.</p>
</div>
<div class="login-popup" id="login-popup" style="display: none;">
		[[!Office?
			&action=`Auth`
			&groups=`Users`
			&loginResourceId=`[[*id]]`
			&tplLogin=`register-form`
		]]
</div>
<div class="restore-pass-popup" style="display: none;" id="restore-pass-popup">
	<p class="restore-pass-popup__title">Восстановление пароля</p>
	<p class="restore-pass-popup__text">Введите свою почту или номер телефона, и мы вышлем вам ссылку на восстановление доступа</p>
	[[!Office?
		&action=`Auth`
		&groups=`Users`
		&loginResourceId=`[[*id]]`
		&tplLogin=`restore-pass-form`
	]]
</div>

{block 'child-skills-popup'}{/block}

<script src="assets/js/scripts.min.js?ver=1.0.23"></script>
<script type="text/javascript">
$(document).on('click', '.footer-menu p', function(){

	document.location.hash = $(this).data('val');
	document.location.href = $(this).data('url') + document.location.hash;

});
</script>
<script	src="/assets/js/vue.js"></script>
<script	src="/assets/js/components.js?ver=1.0.5"></script>

{block 'blog-scripts'}{/block}

</body>
</html>