{extends 'file:templates/layout.tpl'}
 
{block 'main'}
{'page-banner' | chunk : ['pBg' => $_modx->resource.pBg]}
<section class="articles">
	<div class="articles__inner">
		<h1 class="articles__title">Статьи</h1>
	</div>
	<div class="categories__inner">
		<h3 class="categories__title">Наши направления:</h3>
		<ul class="categories__list">
			<li class="categories__item" data-val="all">
				<button type="button" class="categories__url active" style="border-color: #5F5BAB;">
					Все
					<span class="categories__bg" style="background-color: #5F5BAB;"></span>
				</button>
			</li>
			{'!getTvValue' | snippet : ['tvId' => '1']}
		</ul>
	</div>
	<div id="pdopage">
		<div class="articles__content-inner rows">
			{'!ajaxFilter' | snippet}
			{'!pdoPage@AjaxPaginator' | snippet : [
				'parents' => $_modx->resource.id, 
				'limit' => '8',
				'tpl' => 'preview-card-grid',
				'includeTVs' => 'articleTopic, serviceImg',
				'ajaxMode' => 'button',
				'ajaxElemMore' => '#pdopage .js--load-btn',
				'ajaxTplMore' => '@INLINE <div class="articles__content-inner"><button class="articles__load-btn js--load-btn">Показать больше статей</button></div>',
				'processTVs' => '1'
			]}
		</div>
		{$_modx->getPlaceholder('page.nav')}
	</div>
</section>
{/block} 

{block 'blog-scripts'}

<script type="text/javascript">
$(document).ready(function() {

    var filterValGet = window.location.href.split('#');
    

    if(filterValGet[1]){

        $('.categories__url').removeClass('active');
        $('.categories__url[data-val='+ decodeURIComponent(filterValGet[1]) +']').addClass('active');
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

	$(document).on('click', '.categories__url', function(){

        $('.categories__url').removeClass('active');
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
		if (response.pages === response.page){
			$('.js--load-btn').css('display', 'none');
		} else {
			$('.js--load-btn').css('display', 'inline-block');
		}
	});

})
</script>

{/block}
