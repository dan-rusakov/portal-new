{foreach $orders as $order}
{foreach $order.products as $product}
<div class="pa-thin-line grid">
	<div class="pa-thin-line__img-box">
		<img src="{$product.data_thumb}" alt="" class="pa-thin-line__img">
	</div>
	<p class="pa-thin-line__title">{$product.name}</p>
	<div class="pa-thin-line__date-box">
		<i class="pa-thin-line__date-icon icon-form-calendar"></i>
		<p class="pa-thin-line__date">{$order.createdon | date_format: '%d %B %Y'}</p>
	</div>
	{if $order.status_name == 'Не обработан'}
	<div class="pa-thin-line__status-box pa-thin-line_gray">
		<i class="pa-thin-line__status-icon icon-clock"></i>
		<p class="pa-thin-line__status">{$order.status_name}</p>
	</div>
	{elseif $order.status_name == 'Обработан'}
	<div class="pa-thin-line__status-box pa-thin-line_yellow">
		<i class="pa-thin-line__status-icon icon-round-dollar"></i>
		<p class="pa-thin-line__status">{$order.status_name}</p>
	</div>
	{elseif $order.status_name == 'Оплачен'}
	<div class="pa-thin-line__status-box pa-thin-line_green">
		<i class="pa-thin-line__status-icon icon-shield-ok"></i>
		<p class="pa-thin-line__status">{$order.status_name}</p>
	</div>
	{elseif $order.status_name == 'Завершен'}
	<div class="pa-thin-line__status-box pa-thin-line_black">
		<i class="pa-thin-line__status-icon icon-lock-ok"></i>
		<p class="pa-thin-line__status">{$order.status_name}</p>
	</div>
	{/if}
</div>
{/foreach}
{/foreach}
