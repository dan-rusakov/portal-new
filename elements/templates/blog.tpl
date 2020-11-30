{extends 'file:templates/layout.tpl'}
 
{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Блог', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
<section class="blog">
    <div class="container grid">
        <div class="blog__content-left">
            <div class="filter blog__filter">
                <div class="filter__header grid">
                    <p class="filter__title">Фильтры</p>
                    <i class="icon-filter filter__icon"></i>
                    <i class="icon-bold-arrow-down filter__arrow"></i>
                </div>
                <div class="filter__content">
                    <ul class="filter__menu">                      
                        <li class="filter__text active" data-val="all">все</li>
                        {'!getTvValue' | snippet : ['tvId' => '1']}
                    </ul>
                </div>
            </div>
        </div>
        <div class="blog__content-right">
            <div id="pdopage" class="grid">
            <div class="rows grid filtered-item-container">
                {'!ajaxFilter' | snippet}
                {'!pdoPage@AjaxPaginator' | snippet : [
                    'parents' => $_modx->resource.id, 
                    'limit' => '8',
                    'tpl' => 'preview-card-grid',
                    'includeTVs' => 'articleTopic, serviceImg',
                    'ajaxMode' => 'button',
                    'ajaxElemMore' => '#pdopage .more-btn',
                    'ajaxTplMore' => '@INLINE <button class="blog__btn more-btn">Показать больше статей</button>',
                    'processTVs' => '1'
                ]}
            </div>
            {$_modx->getPlaceholder('page.nav')}
            </div>            
        </div>
    </div>
</section>
{/block} 

{block 'blog-scripts'}

<script type="text/javascript">
$(document).ready(function() {

    var filterValGet = window.location.href.split('#');
    

    if(filterValGet[1]){

        $('.filter__text').removeClass('active');
        $('.filter__text[data-val='+ decodeURIComponent(filterValGet[1]) +']').addClass('active');
        window.location.hash = '';

        if (typeof(pdoPage) == 'undefined') return;
		
		// Собираем значения всех фильтров в единый массив
		var fields = {};
		fields['articleTopic'] = decodeURIComponent(filterValGet[1]);
    
    	// И отправляем этот массив на сервер.
    	$.post(document.location.href, {
            action1: 'filter', 
            fields: fields,
            // Параметр hash - обязательный (он содержит настройки pdoPage)
            hash: pdoPage.configs.page.hash
        }, function(data) {
            // Просим pdoPage загрузить новый список ресурсов
            
            var tmp = document.location.href.split('?');
            pdoPage.keys.page = 0;
            pdoPage.loadPage(tmp[0], pdoPage.configs.page);
			//console.log(pdoPage);
        });

    };

	$(document).on('click', '.filter__text', function(){

        $('.filter__text').removeClass('active');
        $(this).addClass('active');
		// Проверяем, что pdoPage подключён
		if (typeof(pdoPage) == 'undefined') return;
		
		// Собираем значения всех фильтров в единый массив
		var fields = {};
		fields['articleTopic'] = $(this).data('val');
    
    	// И отправляем этот массив на сервер.
    	$.post(document.location.href, {
            action1: 'filter', 
            fields: fields,
            // Параметр hash - обязательный (он содержит настройки pdoPage)
            hash: pdoPage.configs.page.hash
        }, function(data) {
            // Просим pdoPage загрузить новый список ресурсов
            var tmp = document.location.href.split('?');
            pdoPage.keys.page = 0;
            pdoPage.loadPage(tmp[0], pdoPage.configs.page);
        });
	});

	$(document).on('pdopage_load', function(e, config, response) {
		if(response.pages < 2 || response.pages == response.page){
			$('.blog__btn').css('display', 'none');
		} else {
			$('.blog__btn').css('display', 'inline-block');
		}
	});

})
</script>

{/block}
