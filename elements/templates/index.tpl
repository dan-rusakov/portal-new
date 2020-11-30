{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="welcome-section" style="background-image: url({$_modx->resource.headerCourseBg | replace : " " : "%20"})">
	<video autoplay muted loop width="100%" height="100%" class="welcome-section__video" pip="false">
		<source src="assets/materials/main-page-video.mp4" type="video/mp4">
	</video>
</section>
<section class="categories main-page__categories">
	<div class="categories__inner">
		<h3 class="categories__title">Наши направления:</h3>
		<ul class="categories__list">
			{'!mFilter2' | snippet : [
				'parents' => '6,145', 
				'limit' => '100',
				'tpl' => '',
				'tplOuter' => '@INLINE: [[+filters]]',
				'tplFilter.outer.default' => '@INLINE: [[+rows]]',
				'tplFilter.row.default' => 'categories-list',
				'element' => 'msProducts',
				'tvPrefix' => 'tv.',
				'filters' => 'msoption|services_radio',
				'sort' => 'tv|dateServicePage'
			]}
		</ul>
	</div>
</section>
<section class="courses">
	<div class="courses__inner">
		<header class="courses__header">
			<h2 class="courses__title">Курсы</h2>
			<a href="{$_modx->makeUrl(6)}" class="courses__page-url">
				Все курсы
				<svg class="courses__page-url-icon" width="42" height="8">
					<use xlink:href="#icon-arrow-long"></use>
				</svg>
			</a>
		</header>
		<div class="courses__courses-box">
			{'!msProducts' | snippet : [
				'parents' => '6,145',
				'tpl' => 'timetable-box',
				'includeTVs' => 'dateServicePage, specialistList',
				'tvPrefix' => 'tv.',
				'limit' => '6'
				'optionFilters' => '{"glav:=":"Да"}',
			]}
		</div>
	</div>
</section>
<section class="education-stages">
	<div class="education-stages__inner">
		<header class="education-stages__header">
			<h2 class="education-stages__title">Системный подход к образованию</h2>
			<a href="{$_modx->makeUrl(16)}" class="education-stages__page-url">
				Подробнее об обучении
				<svg class="education-stages__page-url-icon" width="42" height="8">
					<use xlink:href="#icon-arrow-long"></use>
				</svg>
			</a>
		</header>
		<div class="education-stages__stages-box">
			<div class="education-stages__stage">
				<img
					src="assets/img/education-stages-img1.svg"
					alt="Видеолекции"
					class="education-stages__stage-img"
					width="278"
					height="278"
				>
				<p class="education-stages__stage-name">Видеолекции</p>
			</div>
			<div class="education-stages__stage">
				<img
					src="assets/img/education-stages-img2.svg"
					alt="Практика"
					class="education-stages__stage-img"
					width="278"
					height="278"
				>
				<p class="education-stages__stage-name">Практика</p>
			</div>
			<div class="education-stages__stage">
				<img
					src="assets/img/education-stages-img3.svg"
					alt="Консультации"
					class="education-stages__stage-img"
					width="278"
					height="278"
				>
				<p class="education-stages__stage-name">Консультации</p>
			</div>
			<div class="education-stages__stage">
				<img
					src="assets/img/education-stages-img4.svg"
					alt="Диплом"
					class="education-stages__stage-img"
					width="278"
					height="278"
				>
				<p class="education-stages__stage-name">Диплом</p>
			</div>
		</div>
	</div>
</section>
<section class="reviews">
	<div class="reviews__inner">
		<h2 class="reviews__title">Отзывы</h2>
		<div class="reviews__reviews-box">
			[[!getImageList?
				&tvname=`center_reviews`
				&tpl=`center_review`
				&docid=`15`
				&limit=`999`
			]]
		</div>
	</div>
</section>
<section class="callback-section main-page__callback-section">
	<div class="callback-section__inner">
		<div class="callback-section__card">
			<div class="callback-section__text-box">
				<h2 class="callback-section__title">Поможем выбрать</h2>
				<p class="callback-section__description">
					Если у вас есть вопросы о формате или вы не знаете что выбрать, оставьте свой номер: мы позвоним, чтобы ответить на все ваши вопросы.
				</p>
			</div>
			<form action="#!" method="post" class="callback-section__form js--callback-form">
				<input type="text" name="name" class="text-input callback-section__input" placeholder="Имя">
				<input type="text" name="phone" class="text-input callback-section__input" placeholder="Телефон">
				<input type="text" name="email" class="text-input callback-section__input" placeholder="Почта">
				<label class="callback-section__checkbox-label">
					<input type="checkbox" class="callback-section__checkbox-input visually-hidden js--callback-licence-agreement">
					<span class="callback-section__checkbox"></span>
					<p class="callback-section__licence-text">
						Я согласен с условиями обработки <a href="{$_modx->makeUrl(175)}" class="callback-section__licence-url" target="_blank">персональных данных</a>
					</p>
				</label>
				<button class="callback-section__submit-btn js--callback-sumbit-btn" type="submit" disabled>Отправить</button>
			</form>
		</div>
	</div>
</section>
<section class="articles-section">
	<div class="articles-section__inner">
		<h2 class="articles-section__title">Заметки и статьи наших специалистов</h2>
		<div class="articles-section__articles-box">
			{'!pdoResources' | snippet : [
				'parents' => '9', 
				'limit' => '4',
				'tpl' => 'blog-preview-card',
				'includeTVs' => 'authorsList',
				'tvPrefix' => 'tv.',
			]}
		</div>
		<a href="{$_modx->makeUrl(9)}" class="articles-section__page-url">
			Больше статей
			<svg class="articles-section__page-url-icon" width="42" height="8">
				<use xlink:href="#icon-arrow-long"></use>
			</svg>
		</a>
	</div>
</section>
{/block}