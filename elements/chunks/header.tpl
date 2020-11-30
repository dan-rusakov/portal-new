<header class="header">
		<div class="menu-top-line">
			<div class="container grid">
				<div class="menu-top-line__left-box grid">
					<a href="/" class="logo grid">
						<img src="/assets/content-img/toliman-logo3.png" alt="Образовательный центр Толиман" class="logo__img" style="width: 130px;">
					</a>
				</div>
				<div class="menu-top-line__right-box grid">
					<ul class="main-menu">
						<li class="main-menu__text"><a class="main-menu__url" href="{$_modx->makeUrl(16)}">О проекте</a></li>
						<li class="main-menu__text"><a class="main-menu__url" href="{$_modx->makeUrl(2)}">Обзоры</a></li>
						<li class="main-menu__text"><a class="main-menu__url" href="{$_modx->makeUrl(15)}">Отзывы</a></li>
						<li class="main-menu__text"><a class="main-menu__url" href="{$_modx->makeUrl(21)}">Контакты</a></li>
					</ul>
					[[!AdvSearchForm? &landing=`68` &tpl=`search-line`]]
					<a data-fancybox data-src="#login-popup" href="javascript:;" class="menu-top-line__btn" id="enter-btn">Личный кабинет</a>
				</div>
			</div>
		</div>
		<div class="menu-bottom-line">
			<div class="container grid">
				<ul class="bottom-menu grid">
				<li class="bottom-menu__text">Лицензия №:20090</li>
					<li class="bottom-menu__text"><a class="bottom-menu__url" href="{$_modx->makeUrl(6)}">Центр дополнительного образования</a></li>
					<li class="bottom-menu__text"><a class="bottom-menu__url" href="{$_modx->makeUrl(145)}">Университет родителей</a></li>
					<li class="bottom-menu__text"><a class="bottom-menu__url" href="{$_modx->makeUrl(19)}">Расписание</a></li>
					<li class="bottom-menu__text"><a class="bottom-menu__url" href="{$_modx->makeUrl(11)}">Библиотека</a></li>
				</ul>
			</div>
		</div>
		<div class="menu-line-mobile">
			<div class="container grid">
				<button class="hamburger">
					<div class="hamburger__inner"></div>
				</button>
				<a href="/" class="logo grid">
					<p class="logo__text">Толиман<br>образовательный портал</p>
				</a>
				<a href="#" class="search-link"><i class="icon-search"></i></a>
				<form class="search-line-mobile grid">
					<button type="submit" class="search-line-mobile__btn"><i class="icon-search"></i></button>
					<input type="text" class="search-line-mobile__input" placeholder="Поиск">
					<button type="button" class="search-line-mobile__close"><i class="icon-close"></i></button>
				</form>
				<a data-fancybox data-src="#login-popup" href="javascript:;" class="enter-link"><i class="icon-enter"></i></a>
			</div>
		</div>
		<div class="menu-box-mobile">
			<div class="menu-box-mobile__logo grid">
				<img src="/assets/content-img/toliman-logo3.png" alt="Образовательный центр Толиман" class="menu-box-mobile__logo-img" style="width: 130px; margin-left: 10px; margin-right: 0;">
				<!--<p class="menu-box-mobile__logo-text" style="margin-left: 10px;">Толиман<br>образовательный центр</p>-->
			</div>
			<a data-fancybox data-src="#login-popup" href="javascript:;" class="menu-box-mobile__enter-line grid">
				<i class="menu-box-mobile__enter-line-img icon-enter"></i>
				<p class="menu-box-mobile__enter-line-text">Вход / Регистрация</p>
			</a>
			<div class="menu-box-mobile__menu-inner">
				<ul class="menu-box-mobile__main-menu">
				
					<li><a href="{$_modx->makeUrl(16)}">О проекте</a></li>
					<li><a href="{$_modx->makeUrl(2)}">Обзоры</a></li>
					<li><a href="{$_modx->makeUrl(15)}">Отзывы</a></li>
					<li><a href="{$_modx->makeUrl(21)}">Контакты</a></li>
				</ul>
				<ul class="menu-box-mobile__sec-menu">
					<li><a href="{$_modx->makeUrl(6)}">Центр дополнительного образования</a></li>
					<li><a href="{$_modx->makeUrl(145)}">Университет родителей</a></li>
					<li><a href="{$_modx->makeUrl(19)}">Расписание</a></li>
					<li><a href="{$_modx->makeUrl(11)}">Библиотека</a></li>
				</ul>
			</div>
			<a href="#" class="menu-box-mobile__close-icon"><img src="assets/img/icon-arrow-menu.svg" alt="закрыть"></a>
		
		</div>
		

</header>