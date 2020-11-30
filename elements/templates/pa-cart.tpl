{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
[[!promocode_handler]]
<h1 class="pa-section-title">Корзина</h1>
<div class="pa-content-box">
	[[!msCart?tpl=`pa-cart-card`]]
	[[!msOrder? &tpl=`pa-cart-order`]]
  [[!msGetOrder]]
</div> 

<h3 class="pa-section-title">Недавно Вы смотрели:</h3>

{'!looked' | snippet : [
	'tpl' => 'looked-card',
	'limit' => '4',
	'includeTVs' => 'specialistList, dateServicePage',
	'toPlaceholder' => 'looked-plc',
]}
 
{if $_modx->getPlaceholder('looked-plc')}
	<div class="recently grid">
		<div class="rows grid">
			{$_modx->getPlaceholder('looked-plc')}
		</div>
	</div>
{else}
	<div class="pa-materials__no-materials-box">
		<p class="pa-materials__no-materials-text">Вы еще ничего не смотрели. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
	</div>
{/if}
{/block}