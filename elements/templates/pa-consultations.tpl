{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<h1 class="pa-section-title">Консультации</h1>
{'!pdoPage' | snippet : [
	'parents' => '17,18,19,6,145',
	'element' => 'msProducts',
	'tpl' => 'pa-consultations-box',
	'includeTVs' => 'addMaterials, specialistList',
	'tvPrefix' => 'tv.',
	'limit' => '3',
	'optionFilters' => '{"services_type:=":"Консультация"}',
	'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
	'ajaxMode' => 'button',
	'processTVs' => '1',
	'ajaxElemMore' => '#pdopage .more-btn',
	'ajaxTplMore' => '@INLINE <div class="pa-content-box__btn-box"><a class="more-btn">Показать еще</a></div>',
	'toPlaceholder' => 'consultations-plc',
]}
{if $_modx->getPlaceholder('consultations-plc')}
<div class="pa-content-box" id="pdopage">
	<h3 class="pa-content-box__text">Здесь можно посмотреть к каким специалистам Вы записались на консультацию.</h3>
	<div class="rows">
		{$_modx->getPlaceholder('consultations-plc')}
	</div>
	{$_modx->getPlaceholder('page.nav')}
</div> 
{else}
	<div class="pa-materials__no-materials-box">
		<p class="pa-materials__no-materials-text">Вы еще не записались ни на одну консультацию. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
	</div>
{/if}
<h3 class="pa-section-title">Наши специалисты</h3>
<div class="pa-specialists-inner grid">
	{'!msProducts' | snippet : [
			'parents' => '142',
			'tpl' => 'pa-specialist-card',
			'limit' => '3',
	]}
</div>
{/block}