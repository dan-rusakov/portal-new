<div id="msCart">

    {if !count($products)}
        <h3 class="pa-content-box__title">Ваша корзина пуста</h3>
        <p class="pa-content-box__text">Подберите себе <a href="[[~6]]" class="pa-content-box__url">подходящие курсы.</a></p>
        <div class="pa-content-box__footer grid">
            <p class="pa-content-box__footer-price">Сумма заказа: 0 руб.</p>
            <a href="#" class="main-btn main-btn_disabled pa-content-box__btn">Оплатить</a>
        </div>
    {else}

    <h3 class="pa-content-box__title">Ваш заказ</h3>

    {foreach $products as $product}
        {var $image}
            {if $product.image?}
                <div class="pa-cart-card__img-box">
                    <img class="pa-cart-card__img" src="{$product.image}" alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                </div>
            {else}
                <div class="pa-cart-card__img-box">
                    <img class="pa-cart-card__img" src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png" srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                        alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                </div>
            {/if}
        {/var}
        <div class="pa-cart-card grid" id="{$product.key}">
            {$image}
            <div class="pa-cart-card__text-box">
                {if $product.id?}
                    <a href="{$product.id | url}" class="pa-cart-card__title-url"><p class="pa-cart-card__title">{$product.pagetitle}</p></a>
                {else} 
                    <p class="pa-cart-card__title">{$product.name}</p>
                {/if}
                <p class="pa-cart-card__text">{$product.introtext | truncate : 170 : '...' : true}</p>
            </div>                
            <div class="pa-cart-card__action-box">
                {if $product.old_price?}
                    <p class="pa-cart-card__price">{$product.price} {'ms2_frontend_currency' | lexicon}</p>
                {else}
                    <p class="pa-cart-card__price">{$product.price} {'ms2_frontend_currency' | lexicon}</p>
                {/if}
            </div>
            <form method="post" class="ms2_form text-md-right">
                <input type="hidden" name="key" value="{$product.key}">
                <button class="pa-cart-card__remove" type="submit" name="ms2_action" value="cart/remove"><i class="icon-cross pa-cart-card__remove-icon"></i></button>
            </form>
        </div>
    {/foreach}

    {* <div class="pa-content-box__footer grid">
        <p class="pa-content-box__footer-price">Сумма заказа: <span class="ms2_total_cost">{$total.cost}</span>{'ms2_frontend_currency' | lexicon}</p>
        <a href="#" class="main-btn pa-content-box__btn">Оплатить</a>
    </div> *}
		

    {/if}

</div>
















    
    
    
