{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
 <div class="profile-materials">
		<h1 class="profile-materials__title">История заказов</h1>
		{'!pdoPage' | snippet : [
			'element' => 'msListOrders',
			'tpl' => 'pa-orders-history-line',
			'toPlaceholder' => 'orders-plc',
		]}
		
		{* 'where' => '{"msOrder.status:IN":[2]}', *}
		{if $_modx->getPlaceholder('orders-plc')}
			<h2 class="profile-materials__subtitle">Здесь можете посмотреть все свои заказы и их статусы.</h2>
			<div class="profile-materials__materials-box">
				{$_modx->getPlaceholder('orders-plc')}
			</div> 
		{else}
			<p class="profile-materials__subtitle">Вы еще ничего не купили. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
		{/if}
</div>
{/block}