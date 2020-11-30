<div class="pa-specialist-card grid">
	<div class="pa-specialist-card__img-box">
		<img src="{$image}" alt="" class="pa-specialist-card__img">
	</div>
	<p class="pa-specialist-card__title">{$pagetitle}, {$specialist_radio.0}</p>
	<p class="pa-specialist-card__text">{$introtext | truncate : 180 : '...' : true}</p>
	<a href="{$_modx->makeUrl($id)}" class="main-btn pa-specialist-card__btn">Подробнее</a>
</div>