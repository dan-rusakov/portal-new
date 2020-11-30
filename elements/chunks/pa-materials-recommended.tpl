<div class="pa-service-card grid pa-service-card_recomended">
    <div class="pa-service-card__img" style="background-image: url({$image})"></div>
    <div class="pa-service-card__content">
        <p class="pa-service-card__title">{$pagetitle}</p>
        <p class="pa-service-card__mobile-price">{$price} Р</p> 
        <div class="pa-service-card__text-box">
            <p class="pa-service-card__text">{$introtext | truncate : 70 : '...' : true}</p>
        </div>
        <div class="pa-service-card__price-box grid">
            <p class="pa-service-card__price">{$price} Р</p>
            <a href="{$_modx->makeUrl($id)}" class="pa-service-card__btn">Купить</a>
        </div>
    </div>
</div>   