{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => $_modx->resource.pagetitle, 'pTitle' => $_modx->resource.pTitle, 'introtext' => $_modx->resource.introtext, 'pBg' => $_modx->resource.pBg]}
<section class="services">
	{'!mFilter2' | snippet : [
		'parents' => $_modx->resource.id, 
		'limit' => '8',
		'tpl' => 'service-card',
		'tplOuter' => 'services-content',
		'tplFilter.outer.default' => 'service-filter',
		'tplFilter.row.default' => 'service-filter-item',
		'element' => 'msProducts',
		'includeTVs' => 'serviceImg, servicePrice, eventsTopic, dateServicePage, specialistList',
		'tvPrefix' => 'tv.',
		'tplPage' => '@INLINE <li class="pagination__item"><a href="{$href}" class="pagination__item-link">{$pageNo}</a></li>',
		'tplPageActive' => '@INLINE <li class="pagination__item active"><a href="{$href}" class="pagination__item-link">{$pageNo}</a></li>',
		'tplPageWrapper' => '@INLINE <div class="pagination grid">{$prev}<ul class="pagination__list">{$pages}</ul>{$next}</div>',
		'tplPagePrev' => '@INLINE <a href="{$href}" class="pagination__prev"><i class="icon-bold-arrow-left"></i></a>',
		'tplPagePrevEmpty' => '@INLINE <a href="{$href}" class="pagination__prev disabled"><i class="icon-bold-arrow-left"></i></a>',
		'tplPageNext' => '@INLINE <a href="{$href}" class="pagination__next"><i class="icon-bold-arrow-right"></i></a>',
		'tplPageNextEmpty' => '@INLINE <a href="{$href}" class="pagination__next disabled"><i class="icon-bold-arrow-right"></i></a>',
		'ajaxMode' => 'default',
		'processTVs' => '1',
		'ajaxElemPagination' => '#pdopage>.pagination',
		'filters' => 'msoption|services_radio', 
	]}
</section>
<section class="child-skills">
	<div class="grid">
		<img src="assets/img/child-skills-mobile-img.jpg" alt="" class="child-skills__mobile-img">
		<div class="child-skills__inner grid">
			<p class="child-skills__title">Определим предрасположенность вашего ребёнка</p>
			<form class="main-form child-skills__form grid">
				<label for="" class="main-form__input-inner child-skills__input-inner">
					<i class="icon-form-name"></i>
					<input type="text" class="main-form__input child-skills__input" placeholder="Имя">
				</label>
				<label for="" class="main-form__input-inner child-skills__input-inner">
					<i class="icon-form-calendar"></i>
					<input type="text" class="main-form__input child-skills__input" placeholder="Дата рождения ребенка">
				</label>
				<label for="" class="main-form__input-inner child-skills__input-inner">
					<i class="icon-form-email"></i>
					<input type="text" class="main-form__input child-skills__input" placeholder="Email">
				</label>
				<label for="" class="main-form__input-inner child-skills__input-inner">
					<i class="icon-form-phone"></i>
					<input type="text" class="main-form__input child-skills__input" placeholder="Телефон">
				</label>
				<p class="main-form__personal-data child-skills__personal-data">Нажимая на кнопку, я даю согласие на обработку моих <a href="#" class="main-form__personal-data-link child-skills__personal-data-link">персональных данных</a></p>
				<input type="submit" value="Узнать" class="main-btn child-skills__btn">
				<button data-popup="#child-skills-popup" id="child-skills__btn" class="main-btn child-skills__btn child-skills__btn_mobile">Узнать</button>
			</form>
		</div>
	</div>
</section>
{/block}

{block 'blog-scripts'}

<script type="text/javascript">
$(document).ready(function() {

	$('.filter__text').on('click', function(){
		$(this).toggleClass('active');
		if ($(this).index() != 0) {
			$('.filter__text').eq(0).removeClass('active');
		} else {
			$('.filter__text').removeClass('active');
			$(this).addClass('active');
		}
	});

	/*$('.filter__text:first-child').on('click', function(){
		$(this).toggleClass('active');
	});*/

/*


	var filterValGet = window.location.href.split('#');
    

    if(filterValGet[1]){

			console.log(decodeURIComponent(filterValGet[1]));

        $('.filter__text').removeClass('active');
        $('.filter__text[data-val='+ decodeURIComponent(filterValGet[1]) +']').addClass('active');
        window.location.hash = '';

        if (typeof(pdoPage) == 'undefined') return;
		
		// Собираем значения всех фильтров в единый массив
		var fields = {};
		fields['serviceTopic'] = decodeURIComponent(filterValGet[1]);
    
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
		fields['serviceTopic'] = $(this).data('val');
    
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
	});*/

})
</script>

{/block}