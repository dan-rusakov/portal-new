{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<h1 class="pa-section-title">История заказов</h1>
{'!pdoPage' | snippet : [
	'element' => 'msListOrders',
	'tpl' => 'pa-orders-history-line',
	'toPlaceholder' => 'orders-plc',
]}
{* 'where' => '{"msOrder.status:IN":[2]}', *}
{if $_modx->getPlaceholder('orders-plc')}
	<div class="pa-content-box">
		<h3 class="pa-content-box__text">Здесь можете посмотреть все свои заказы и их статусы.</h3>
		{$_modx->getPlaceholder('orders-plc')}
	</div> 
{else}
	<div class="pa-materials__no-materials-box">
		<p class="pa-materials__no-materials-text">Вы еще ничего не купили. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
	</div>
{/if}

{/block}