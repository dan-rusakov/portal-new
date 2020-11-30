{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'О проекте', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
<section class="about">
	<div class="container grid">
		<h2 class="section-title about__title">О нашем проекте</h2>
		<div class="about__text-area">
			{$_modx->resource.mainPageAdv}
		</div>
	</div>
</section>
<section class="partners">
	<div class="container">
		<h2 class="section-title partners__title">Сертификаты</h2>
	</div>
	<div class="owl-carousel partners-carousel">
		[[!getImageList?
			&tvname=`ourPartners`
			&tpl=`partners-box`
			&docid=`[[*id]]`
			&limit=`999`
		]]
	</div>
</section>
<section class="authors">
    <div class="container">
      <h2 class="authors__title section-title">Специалисты и авторы</h2>
			{'!mFilter2' | snippet : [
				'parents' => '142', 
				'limit' => '3',
				'tpl' => 'specialist-card',
				'tplOuter' => 'specialist-content',
				'tplFilter.outer.default' => 'specialist-filter',
				'tplFilter.row.default' => 'specialist-filter-item',
				'element' => 'msProducts',
				'includeTVs' => 'serviceTopic, serviceImg, servicePrice, eventsTopic, dateServicePage, locationServicePage, specialistList, specialistFullImg',
				'tvPrefix' => 'tv.',
				'ajaxMode' => 'scroll',
				'processTVs' => '1',
				'filters' => 'msoption|specialist_type', 
			]}
			
    </div>
</section>

<section class="program-help">
    <div class="container grid">
        <h2 class="program-help__title section-title">Помощь с выбором программы обучения</h2>
        <p class="program-help__text"></p>
        <form class="main-form program-help__form grid">
            <label for="" class="main-form__input-inner program-help__input-inner">
                <i class="icon-form-name"></i>
                <input type="text" class="main-form__input program-help__input" placeholder="Имя">
            </label>
            <label for="" class="main-form__input-inner program-help__input-inner">
                <i class="icon-form-phone"></i>
                <input type="text" class="main-form__input program-help__input" placeholder="Телефон">
            </label>
            <button type="submit" class="main-btn program-help__form-btn">Подписаться</button>
            <p class="main-form__personal-data program-help__form-personal-data">Нажимая на кнопку, я даю согласие на обработку моих <a href="#" class="main-form__personal-data-link program-help__form-personal-data-link">персональных данных</a></p>
        </form>
    </div>
</section>

<section class="should-read">
    <div class="container grid">
        <h2 class="should-read__title section-title">Рекомендуем почитать</h2>
        {'!pdoPage' | snippet : [
            'parents' => '9', 
            'limit' => '4',
            'tpl' => 'preview-card-grid',
            'includeTVs' => 'articleTopic, serviceImg'
        ]}
        <a href="{$_modx->makeUrl(9)}" class="should-read__btn more-btn">Показать больше статей</a>
    </div>
</section>
{/block}