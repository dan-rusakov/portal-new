{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<div class="profile-materials">
		<h1 class="profile-materials__title">Доступные мероприятия</h1>
		<h2 class="profile-materials__subtitle">Ваши мероприятия</h2>
			{'!pdoPage' | snippet : [
			'parents' => '17,18,19,6,145',
			'element' => 'msProducts',
			'tpl' => 'pa-materials-box',
			'includeTVs' => 'addMaterials, specialistList, dateServicePage',
			'tvPrefix' => 'tv.',
			'limit' => '3',
			'where' => '{"id:IN":['~$_modx->runSnippet('!getUsersOrders')~']}',
			'optionFilters' => '{"services_type:=":"Мероприятие"}',
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
    {else}
			<div class="pa-content-box" id="pdopage-rec">
					<div class="rows pa-materials__materials-grid grid">

					{'!pdoPage' | snippet : [
							'parents' => '17,18,19,6,145',
							'element' => 'msProducts',
							'tpl' => 'pa-materials-recommended',
							'includeTVs' => 'addMaterials, specialistList',
							'tvPrefix' => 'tv.',
							'limit' => '4',
							'optionFilters' => '{"services_type:=":"Мероприятие"}',
							'ajaxMode' => 'button',
							'processTVs' => '1',
							'ajaxElemWrapper' => '#pdopage-rec',
							'ajaxElemRows' => '#pdopage-rec .rows',
							'ajaxElemPagination' => '#pdopage-rec .pagination',
							'ajaxElemLink' => '#pdopage-rec .pagination a',
							'ajaxElemMore' => '#pdopage-rec .more-btn',
							'ajaxTplMore' => '@INLINE <div class="pa-materials__btn-box"><a class="more-btn pa-materials__btn">Показать еще</a></div>',
							'pageNavVar' => 'page-rec.nav',
							'pageVarKey' => 'page-rec'
					]} 

					</div>
					{$_modx->getPlaceholder('page-rec.nav')}
			</div>
		{/if} 
</div>
{/block}