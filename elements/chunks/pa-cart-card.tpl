<div class="profile-materials" id="msCart">
	{if !count($products)}
		<h1 class="profile-materials__title">Корзина</h1>
		<h2 class="profile-materials__subtitle">Ваша корзина пуста</h2>
		<div class="profile-cart__submit-box">
				<p class="profile-cart__total-price">Сумма заказа: 0 руб.</p>
				<button class="profile-cart__confirm-btn" type="button">Подтвердить</button>
				<button class="profile-cart__buy-btn" type="button">Оплатить сейчас</button>
		</div>
	{else}
		<h1 class="profile-materials__title">Корзина</h1>
		<h2 class="profile-materials__subtitle">Ваш заказ</h2>
		<div class="profile-cart__materials-box">
		{foreach $products as $product}
				<article class="author-card" id="{$product.key}">
					{if $product.id?}
					<div class="author-card__url">
					{else} 
					<button type="button" class="author-card__url">
					{/if}
						{var $image}
								{if $product.image?}
										<div class="author-card__img-box">
											<img src="{$product.image}" alt="{$product.pagetitle}" title="{$product.pagetitle}" class="author-card__img">
										</div>
								{else}
										<div class="author-card__img-box">
											<img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png" srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x" alt="{$product.pagetitle}" title="{$product.pagetitle}" class="author-card__img">
										</div>
								{/if}
						{/var}
						<div class="author-card__text-box">
							{if $product.id?}
								<b class="author-card__name">{$product.pagetitle}</b>
							{else} 
								<b class="author-card__name">{$product.name}</b>
							{/if}
							
							<p class="author-card__text">
								{$product.introtext | truncate : 170 : '...' : true}
							</p>
							<form class="ms2_form author-card__action-box" method="post">
								<input type="hidden" name="key" value="{$product.key}">
								<p class="author-card__price">{$product.price} {'ms2_frontend_currency' | lexicon}</p>
								<button class="author-card__btn" type="submit" name="ms2_action" value="cart/remove">Удалить</button>
							</form>
						</div>
					{if $product.id?}
					</div>
					{else} 
					</button>
					{/if}
				</article>
    {/foreach}
		</div>
	{/if}
</div>