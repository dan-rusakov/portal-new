{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pBg' => $_modx->resource.pBg]}
<section class="about">
	<div class="about__inner">
		<article class="about__card text-constructor">
			<h1>О нашем проекте</h1>
			{$_modx->resource.mainPageAdv}
		</article>
	</div>
</section>
<section class="certificates">
	<div class="certificates__inner">
		<h2 class="certificates__title">Сертификаты</h2>
		<div class="certificates__gallery js--certificates-gallery">
			<div class="swiper-container">
				<div class="swiper-wrapper" id="lightgallery">
					[[!getImageList?
						&tvname=`ourPartners`
						&tpl=`partners-box`
						&docid=`[[*id]]`
						&limit=`999`
					]]
				</div>
			</div>
			<button class="certificates__gallery-btn certificates__gallery-btn--prev">
				<svg class="certificates__gallery-icon" width="67" height="24">
					<use xlink:href="#icon-gallery-arrow"></use>
				</svg>
			</button>
			<button class="certificates__gallery-btn certificates__gallery-btn--next">
				<svg class="certificates__gallery-icon" width="67" height="24">
					<use xlink:href="#icon-gallery-arrow"></use>
				</svg>
			</button>
		</div>
	</div>
</section>
{'!mFilter2' | snippet : [
	'parents' => '142', 
	'limit' => '1000',
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
						Я согласен с условиями обработки <a href="#!" class="callback-section__licence-url" target="_blank">персональных данных</a>
					</p>
				</label>
				<button class="callback-section__submit-btn js--callback-sumbit-btn" type="submit" disabled>Отправить</button>
			</form>
		</div>
	</div>
</section>
<section class="articles-section">
	<div class="articles-section__inner">
		<h2 class="articles-section__title">Рекомендуем почитать</h2>
		<div class="articles-section__articles-box">
			{'!pdoPage' | snippet : [
				'parents' => '9', 
				'limit' => '4',
				'tpl' => 'preview-card-grid',
				'includeTVs' => 'articleTopic, serviceImg',
				'includeContent' => '1',
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