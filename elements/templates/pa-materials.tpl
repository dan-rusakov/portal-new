{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<div class="profile-materials">
		<h1 class="profile-materials__title">Доступные материалы</h1>
		<h2 class="profile-materials__subtitle">Ваши курсы</h2>
			{'!pdoPage' | snippet : [
			'parents' => '17,18,19,6,145',
			'element' => 'msProducts',
			'tpl' => 'pa-materials-box',
			'includeTVs' => 'addMaterials, specialistList, dateServicePage',
			'tvPrefix' => 'tv.',
			'limit' => '3',
			'where' => '{"id:IN":['~$_modx->runSnippet('!getUsersOrders')~']}',
			'optionFilters' => '{"services_type:=":"Материал"}',
			'toPlaceholder' => 'materials-plc',
			'ajaxMode' => 'button',
			'processTVs' => '1',
			'ajaxElemWrapper' => '#pdopage',
			'ajaxElemRows' => '#pdopage .rows',
			'ajaxElemPagination' => '#pdopage .pagination',
			'ajaxElemLink' => '#pdopage .pagination a',
			'ajaxElemMore' => '#pdopage .more-btn',
			'ajaxTplMore' => '@INLINE <div class="pa-materials__btn-box"><a class="more-btn pa-materials__btn">Показать еще</a></div>',
			'pageNavVar' => 'page.nav',
			'pageVarKey' => 'page'
		]} 
		{if $_modx->getPlaceholder('materials-plc')}
			<div id="pdopage">
				<div class="profile-materials__materials-box">
					{$_modx->getPlaceholder('materials-plc')}
				</div>
				{$_modx->getPlaceholder('page.nav')}
			</div>
		{/if} 
</div>
{/block}