<!DOCTYPE html>
<html lang="ru">

<head>

	<meta charset="utf-8">

	<title>[[*pagetitle]]</title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	
    <base href="/">

	<meta property="og:image" content="path/to/image.jpg">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
	<style>body { opacity: 0; overflow-x: hidden; } html { background-color: #fff; }</style>
	<link rel="stylesheet" href="assets/css/main.min.css?ver=1.1.0">
	<meta name="yandex-verification" content="ca112c737c740cfb" />
	<style>
	@media only screen and (max-width: 767px) {
		.pa-wrapper>div {
			grid-template-columns: 1fr;
		}
	}	
	</style>
	<style>
		.fade-enter-active, .fade-leave-active {
			transition: opacity .35s;
		}
		.fade-enter, .fade-leave-to {
			opacity: 0;
		}
		.login-popup__tab-title {
				font-size: 1.35em;
		}
		.quiz {
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			z-index: 1000;
			background-color: rgba(0, 0, 0, 0.3);
			display: flex;
			flex-direction: row;
			align-items: center;
			justify-content: center;
		}
		.quiz__wrapper {
			width: 650px;
			max-width: 100%;
			background-color: #fff;
			-webkit-border-radius: 4px;
			border-radius: 4px;
			-webkit-box-shadow: 0 4px 10px rgba(0,0,0,.25);
			box-shadow: 0 4px 10px rgba(0,0,0,.25);
			padding: 30px;
			display: flex;
		}
		.quiz__question-box {
			display: none;
			flex-direction: column;
			width: 100%;
		}
		.quiz__question-box--active {
			display: flex;
		}
		.quiz__question-box--centered {
			text-align: center;
		}
		.quiz__title {
			font-size: 28px;
			margin: 0 0 20px;
		}
		.quiz__answers-list {
			padding: 0;
			margin: 0 0 30px;
			list-style-type: none;
		}
		.quiz__answer-btn {
			background-color: #fff;
			border: none;
			font-size: 18px;
			margin-bottom: 10px;
			padding-left: 35px;
			position: relative;
			outline: none;
			transition: .25s color ease;
			cursor: pointer;
		}
		.quiz__answer-btn:hover, .quiz__answer-btn:focus {
			color: #008eb3;
		}
		.quiz__answer-btn::before {
			content: '';
			display: block;
			width: 16px;
			height: 16px;
			border-radius: 22px;
			border: 1px solid #008eb3;
			position: absolute;
			left: 0;
			top: calc(50% - 8px);
		}
		.quiz__answer-btn::after {
			content: '';
			width: 8px;
			height: 8px;
			border-radius: 22px;
			background-color: #008eb3;
			position: absolute;
			left: 4px;
			top: calc(50% - 4px);
			opacity: 0;
		}
		.quiz__answer-btn--active::after {
			opacity: 1;
		}
		.quiz__next-btn {
			padding: 10px 20px;
			align-self: flex-start;
			margin-top: auto;
		}
		.quiz__result-text {
			font-size: 18px;
			margin: 0;
		}
		.quiz__result-number {
			font-size: 60px;
			font-family: "gothamPro", sans-serif;
			font-weight: bold;
			color: #f4656d;
			margin: 0;
		}
		.quiz__open-btn {
			margin-top: 15px;
		}

		.pa-content-box__promocode-input {
			max-width: 280px;
			margin-right: 30px;
			justify-self: end;
			width: calc(100% - 30px);
		}

		.pa-content-box__footer--mb {
			margin-bottom: 20px;
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

<section class="pa-wrapper">
    <div class="container grid">
        <div class="left-menu">
            <div class="left-menu__header grid">
                <div class="left-menu__header-img-box">
                    <img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="left-menu__header-img"> 
                </div>
                <p class="left-menu__header-name left-menu__header-name_black">{$_modx->user.id | userinfo: 'fullname'}</p>
                <a href="{$_modx->makeUrl(98)}" class="left-menu__header-text">Личный кабинет</a>
            </div>
            <div class="left-menu__content grid">
                <a href="{$_modx->makeUrl(99)}" class="left-menu__line grid">
                    <div class="left-menu__left-item grid">
                        <i class="icon-cart left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">Корзина</p>
											{*	{'!msCart' | snippet : ['tpl'=>'@INLINE {$total.count}','toPlaceholder'=>'cart-total-plc']}
												{if $_modx->getPlaceholder('cart-total-plc')}<p class="left-menu__notice">{$_modx->getPlaceholder('cart-total-plc')}</p>{/if} *}
                    </div>
                </a>
                <a href="{$_modx->makeUrl(100)}" class="left-menu__line grid">
                    <div class="left-menu__left-item grid">
                        <i class="icon-form-calendar left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">Мое обучение</p>
											{*	{'!pa-events-ids' | chunk}
												{var $idsCount = '!pa-events-count' | snippet : [
													'meetingsIds' => ''~$_modx->getPlaceholder('materials-meetings-plc')~'',
													'eventsIds' => ''~$_modx->getPlaceholder('materials-events-plc')~'',
												]}
												{if $idsCount}
                        <p class="left-menu__notice">{$idsCount}</p>
												{/if} *}
                    </div>
                </a>  
                <a href="{$_modx->makeUrl(101)}" class="left-menu__line grid"> 
                    <div class="left-menu__left-item grid">
                        <i class="icon-staff left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">Доступные материалы</p>
                    </div>
                </a>
                <a href="{$_modx->makeUrl(102)}" class="left-menu__line grid">
                    <div class="left-menu__left-item grid">
                        <i class="icon-history left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">История заказов</p>
                    </div>
                </a>
                <a href="{$_modx->makeUrl(103)}" class="left-menu__line grid">
                    <div class="left-menu__left-item grid">
                        <i class="icon-man-white left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">Консультации</p>
											{*	{var $consultTotal = '!msProducts' | snippet : [
													'parents' => '6',
													'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
													'returnIds' => '1',
												] | split}
												{if $consultTotal | len > 0}
                        <p class="left-menu__notice">{$consultTotal | len}</p>
												{/if} *}
                    </div>
                </a>
                <a href="{$_modx->makeUrl(104)}" class="left-menu__line grid">
                    <div class="left-menu__left-item grid">
                        <i class="icon-settings left-menu__icon"></i>
                    </div>
                    <div class="left-menu__right-item grid">
                        <p class="left-menu__name">Настройки</p>
                    </div>
                </a>
            </div>           
        </div>
        <div class="pa-left-content-box" id="app">
            {block 'main'}{/block}
        </div> 
    </div>
</section>
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

<script src="assets/js/scripts.min.js?ver=1.0.23"></script>
<script	src="/assets/js/vue.js"></script>
<script	src="/assets/js/components.js?ver=1.0.5"></script>

</body>
</html>



