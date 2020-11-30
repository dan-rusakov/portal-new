<header class="header">
        <div class="menu-top-line menu-top-line_mobile">
			<div class="container grid">
				<div class="menu-top-line__left-box grid">
					<a href="/" class="logo grid">
						<img src="/assets/content-img/toliman-logo3.png" alt="Образовательный центр Толиман" class="logo__img" style="width: 200px;">
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
					<div class="pa-actions-box grid">
						<div class="pa-mini-menu-box">
							<div class="pa-mini-menu">
								<div class="pa-mini-menu__header grid">
									<div class="pa-mini-menu__img-box"><img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="pa-mini-menu__img"></div>
									<p class="pa-mini-menu__name">{$_modx->user.id | userinfo: 'fullname'}</p>
									<i class="pa-mini-menu__arrow icon-arrow-mini-menu"></i>
								</div>
								<ul class="pa-mini-menu__list">
									<li class="pa-mini-menu__item"><a href="{$_modx->makeUrl(98)}" class="pa-mini-menu__url">Личный кабинет</a></li>
									<li class="pa-mini-menu__item"><a href="{$_modx->makeUrl(104)}" class="pa-mini-menu__url">Настройки</a></li>
									<li class="pa-mini-menu__item"><a href="{$_modx->makeUrl(1)}?action=auth/logout" class="pa-mini-menu__url">Выход</a></li>
								</ul>
							</div> 
						</div>
						<a href="{$_modx->makeUrl(99)}" class="pa-actions-box__url">
							<i class="icon-cart pa-actions-box__cart"></i>
							{'!msCart' | snippet : ['tpl'=>'@INLINE {$total.count}','toPlaceholder'=>'cart-total-plc']}
							{if $_modx->getPlaceholder('cart-total-plc')}
							<p class="pa-actions-box__cart-goods-count">{$_modx->getPlaceholder('cart-total-plc')}</p>
							{/if}
						</a>
					</div>
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
					<p class="logo__text">Толиман<br>образовательный центр</p>
				</a>
				<a href="#" class="search-link"><i class="icon-search"></i></a>
				<form class="search-line-mobile grid">
					<button type="submit" class="search-line-mobile__btn"><i class="icon-search"></i></button>
					<input type="text" class="search-line-mobile__input" placeholder="Поиск">
					<button type="button" class="search-line-mobile__close"><i class="icon-close"></i></button>
				</form>
				<a href="{$_modx->makeUrl(99)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-cart" style="color:white;"></i></a>
			</div>
		</div>
		<div class="menu-box-mobile">
			<div class="menu-box-mobile__logo grid">
				<img src="/assets/content-img/toliman-logo3.png" alt="Образовательный центр Толиман"" class="menu-box-mobile__logo-img" style="width: 130px; margin-left: 10px; margin-right: 0;">
				<!--<p class="menu-box-mobile__logo-text" style="margin-left: 10px;">Толиман<br>образовательный центр</p>-->
			</div>
			<div class="menu-box-mobile__mini-menu">
				<div class="menu-box-mobile__mini-menu-header grid" tabindex="0">
					<div class="menu-box-mobile__mini-menu-img-box">
						<img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="menu-box-mobile__mini-menu-img">
					</div>
					<p class="menu-box-mobile__mini-menu-user-name">{$_modx->user.id | userinfo: 'fullname'}</p>
					<i class="menu-box-mobile__mini-menu-slide-arrow icon-arrow-mini-menu"></i>
					<a href="{$_modx->makeUrl(99)}" class="menu-box-mobile__mini-menu-url"><i class="menu-box-mobile__mini-menu-cart icon-cart"></i></a>
					<a href="{$_modx->makeUrl(1)}?action=auth/logout" class="menu-box-mobile__mini-menu-url"><i class="menu-box-mobile__mini-menu-exit icon-exit"></i></a>
				</div>
				<div class="menu-box-mobile__mini-menu-content">
					<a href="{$_modx->makeUrl(98)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-home"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Личный кабинет</p>
					</a>
					<a href="{$_modx->makeUrl(99)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-cart"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Корзина</p>
					</a>
					<a href="{$_modx->makeUrl(100)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-form-calendar"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Мое обучение</p>
					</a>
					<a href="{$_modx->makeUrl(101)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-bag"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Доступные материалы</p>
					</a>
					<a href="{$_modx->makeUrl(102)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-history"></i>
						<p class="menu-box-mobile__mini-menu-item-text">История заказов</p>
					</a>
					<a href="{$_modx->makeUrl(103)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-man-white"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Консультации</p>
					</a>
					<a href="{$_modx->makeUrl(104)}" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-settings"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Настройки</p>
					</a>
					<a href="{$_modx->makeUrl(1)}?action=auth/logout" class="menu-box-mobile__mini-menu-item">
						<i class="menu-box-mobile__mini-menu-item-icon icon-exit"></i>
						<p class="menu-box-mobile__mini-menu-item-text">Выход</p>
					</a>
				</div>
			</div>
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