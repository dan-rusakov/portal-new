{foreach $orders as $order}
{foreach $order.products as $product}
<article class="product-card product-card--not-hover">
	<div class="product-card__url">
		<div class="product-card__img-box">
			<div class="product-card__img-wrap">
				<img src="{$product.data_thumb}" alt="" class="product-card__img">
			</div>
		</div>
		<div class="product-card__text-box">
			<time class="product-card__date">{$order.createdon | date_format: '%d %B %Y'}</time>
			<h4 class="product-card__title">{$product.name}</h4>			
			{if $order.status_name == 'Не обработан'}
			<p class="product-card__status" style="color: #979797;">Не обработан</p>
			{elseif $order.status_name == 'Обработан'}
			<p class="product-card__status" style="color: #FF9F00;">Обработан</p>
			{elseif $order.status_name == 'Оплачен'}
			<p class="product-card__status" style="color: #2D8984;">Оплачен</p>
			{elseif $order.status_name == 'Завершен'}
			<p class="product-card__status" style="color: #33312D;">Оплачен</p>
			{/if}
		</div>
	</div>
</article>
{/foreach}
{/foreach}