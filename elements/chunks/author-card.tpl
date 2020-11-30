<div class="author-card grid">
    <p class="author-card__name">{if $_modx->resource.specialistList}{$_modx->resource.specialistList}{else}{$pagetitle}{/if}</p>
    <p class="author-card__profession">{$specialist_type.0}</p>
    <p class="author-card__description">[[+introtext]]<br><a href="{$_modx->makeUrl($id)}" class="main-btn" style="margin-top: 20px;">Подробнее</a></p>
    <div class="author-card__img"><img src="assets/content-img/[[+tv.specialistFullImg]]" alt="" class=" img-responsive"></div>
</div>