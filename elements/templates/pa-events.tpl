{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<h1 class="pa-section-title">Ваше обучение</h1>


{* {'!pa-events-ids' | chunk}
 {'!pdoPage' | snippet : [
	'parents' => '0',
	'element' => 'msProducts',
	'tpl' => 'pa-materials-box',
	'includeTVs' => 'dateServicePage',
	'tvPrefix' => 'tv.',
	'limit' => '999',
	'resources' => ''~$_modx->getPlaceholder('materials-meetings-plc')~','~$_modx->getPlaceholder('materials-events-plc')~','~$_modx->getPlaceholder('materials-education-plc')~'',
	'toPlaceholder' => 'events-plc',
	'sortdir' => 'DESC'
	'sortby' => 'dateServicePage'
]} *}

{'!pdoPage' | snippet : [
	'parents' => '17,18,19,6,145',
	'element' => 'msProducts',
	'tpl' => 'pa-events-box',
	'includeTVs' => 'dateServicePage',
	'tvPrefix' => 'tv.',
	'limit' => '999',
	'optionFilters' => '{"services_type:=":"Мероприятие"}',
	'toPlaceholder' => 'materials-plc',
		'ajaxMode' => 'button',
	'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
	'toPlaceholder' => 'events-plc',
	'sortby' => 'dateServicePage',
]}



	
	{* 'optionFilters' => '{"services_radio":"Встреча","OR events_radio":"Вебинар"}', *}
{if $_modx->getPlaceholder('events-plc')}
	<div class="pa-content-box">{$_modx->getPlaceholder('events-plc')}</div>
{else}
	<div class="pa-materials__no-materials-box">
			<p class="pa-materials__no-materials-text">Вы еще ничего не купили и не добавили. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
	</div>
{/if} 

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