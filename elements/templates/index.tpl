{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="page-banner" style="background-image: url({$_modx->resource.headerCourseBg | replace : " " : "%20"});">
	<div class="container grid">
		<p class="page-banner__subtitle">[[+tv.serviceTopic]]</p>
		<p class="page-banner__title">{$_modx->resource.headerCourse}</p>
		<div class="page-banner__btn-inner">
			<a href="{$_modx->makeUrl('!getPageIdByTitle' | snippet : ['pagetitle' => $_modx->resource.headerCourse])}" class="main-btn page-banner__btn">Хочу посмотреть{$id}</a>
			<a href="{$_modx->makeUrl(17)}" class="sec-btn page-banner__btn">Другие материалы</a>
		</div>
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

<section class="timetable">
	<div class="container">
		<h2 class="section-title timetable__title">Свежее раписание</h2>
	</div>
	<div class="owl-carousel timetable-carousel">
		{'!msProducts' | snippet : [
			'parents' => '6',
			'tpl' => 'timetable-box',
			'includeTVs' => 'dateServicePage, specialistList',
			'tvPrefix' => 'tv.',
			'limit' => '6'
			'optionFilters' => '{"glav:=":"Да"}',
    ]}
	</div>
	<div class="container grid">
		<a href="{$_modx->makeUrl(19)}" class="timetable__btn more-btn">Показать все события</a>
	</div>
</section>
<section class="notes">
    <div class="container grid">
        <h2 class="section-title notes__title">Заметки и статьи наших специалистов</h2>
        {'!pdoResources' | snippet : [
            'parents' => '9', 
            'limit' => '4',
            'tpl' => 'blog-preview-card',
            'includeTVs' => 'authorsList',
            'tvPrefix' => 'tv.',
        ]}
        <a href="{$_modx->makeUrl(9)}" class="more-btn notes__btn">Показать больше статей</a>
    </div>
</section>
<section class="partners">
	<div class="container">
		<h2 class="section-title partners__title">Наши партнёры</h2>
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

<section class="email-delivery">
	<div class="container grid">
		<h2 class="email-delivery__title section-title">Подпишитесь на нашу рассылку интересных событий:</h2>
		<p class="email-delivery__subtitle">В ней анонсы курсов, расписание вебинаров, новости о распродажах и акциях. Присоединяйтесь!</p>
		<form class="main-form email-delivery__form grid">
			<label for="" class="main-form__input-inner email-delivery__input-inner">
				<i class="icon-form-email"></i>
				<input type="text" class="main-form__input email-delivery__input" placeholder="Email">
			</label>
			<input type="submit" value="Подписаться" class="main-btn email-delivery__btn">
			<p class="main-form__personal-data email-delivery__personal-data">Нажимая на кнопку, я даю согласие на обработку моих <a href="#" class="main-form__personal-data-link email-delivery__personal-data-link">персональных данных</a></p>
		</form>
		
	</div>
	<a href="http://class.tolimantsentr.ru/">Старая версия сайта</a>
</section>
{/block}
{block 'child-skills-popup'}
<div class="child-skills-popup" id="child-skills-popup" style="display: none; width: 100%">
	<p class="child-skills-popup__title">Определим предрасположенность вашего ребёнка</p>
	<form class="main-form child-skills-popup__form grid">
		<label for="" class="main-form__input-inner child-skills-popup__input-inner">
			<i class="icon-form-name"></i>
			<input type="text" class="main-form__input child-skills-popup__input" placeholder="Имя">
		</label>
		<label for="" class="main-form__input-inner child-skills-popup__input-inner">
			<i class="icon-form-calendar"></i>
			<input type="text" class="main-form__input child-skills-popup__input" placeholder="Дата рождения ребенка">
		</label>
		<label for="" class="main-form__input-inner child-skills-popup__input-inner">
			<i class="icon-form-email"></i>
			<input type="text" class="main-form__input child-skills-popup__input" placeholder="Email">
		</label>
		<label for="" class="main-form__input-inner child-skills-popup__input-inner">
			<i class="icon-form-phone"></i>
			<input type="text" class="main-form__input child-skills-popup__input" placeholder="Телефон">
		</label>
		<input type="submit" value="Узнать" data-popup="#child-skills-popup" class="main-btn child-skills-popup__btn">
		<p class="main-form__personal-data child-skills-popup__personal-data">Нажимая на кнопку, я даю согласие на обработку моих <a href="[[~175]]" class="main-form__personal-data-link">персональных данных</a></p>
	</form>
	
</div>
{/block}