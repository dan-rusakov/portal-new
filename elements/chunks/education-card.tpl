<div class="service-card">
	<div class="service-card__img" style="background-image: url({$image | replace : " " : "%20"})"></div>
	<div class="service-card__content grid">
		<p class="service-card__topic">#{$services_radio.0}</p>
		<p class="service-card__title">{$pagetitle}</p>
		<p class="service-card__description">{$introtext | truncate : 64 : '...' : true}</p>	
		<div class="service-card__price-box grid">
			<p class="service-card__price">{if $price}{$price} Р{/if}</p>
			<a href="{$_modx->makeUrl($id)}" class="service-card__btn">Подробнее</a>
		</div>
	</div>
</div>