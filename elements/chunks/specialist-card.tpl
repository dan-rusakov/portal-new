<div class="author-card grid">
	<p class="author-card__name">{if $_modx->resource.specialistList}{$_modx->resource.specialistList}{else}{$pagetitle}{/if}</p>
	<p class="author-card__profession">[[+tv.specialistProfession]]</p>
	<p class="author-card__description">[[+introtext]]<br><a href="[[~[[+id]]]]" class="main-btn" style="margin-top: 20px;">Подробнее</a></p> 
	<div class="author-card__img"><img src="[[+tv.specialistFullImg]]" alt="" class=" img-responsive"></div>
</div>