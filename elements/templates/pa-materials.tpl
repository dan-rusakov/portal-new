{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<h1 class="pa-section-title">Ваши материалы</h1>
	{'!pdoPage' | snippet : [
    'parents' => '17,18,19,6,145',
		'element' => 'msProducts',
		'tpl' => 'pa-materials-box',
		'includeTVs' => 'addMaterials, specialistList',
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
        <div class="pa-content-box">
           
            <div id="pdopage" class="grid">
                <div class="rows">
                    {$_modx->getPlaceholder('materials-plc')}
                </div>
                {$_modx->getPlaceholder('page.nav')}
            </div>

        </div>
    {else}
        <div class="pa-materials__no-materials-box">
                <p class="pa-materials__no-materials-text">Вы еще ничего не купили и не добавили. На нашем сайте Вы найдете множество полезных материалов: курсы, вебинары, обучение, интерактивы, встречи, книги, фильмы, а так же у нас можно заказать консультации психолога и юриста.</p>
        </div>
        <h3 class="pa-section-title">Рекомендуем:</h3>

        <div class="pa-content-box" id="pdopage-rec">
            <div class="rows pa-materials__materials-grid grid">

            {'!pdoPage' | snippet : [
                'parents' => '17,18,19,6,145',
                'element' => 'msProducts',
                'tpl' => 'pa-materials-recommended',
                'includeTVs' => 'addMaterials, specialistList',
                'tvPrefix' => 'tv.',
                'limit' => '4',
                'optionFilters' => '{"services_type:=":"Материал"}',
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



{/block}