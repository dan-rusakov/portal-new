{extends 'file:templates/layout.tpl'}

{block 'main'}
[[!msProducts]]
<section class="article__author-card">
	<div class="article__author-card-inner">
		<article class="author-big-card">
			<div class="author-big-card__img-box">
				<img src="[[*specialistFullImg]]" alt="" class="author-big-card__img">
			</div>
			<div class="author-big-card__text-box">
				<h1 class="author-big-card__title">{$_modx->resource.pagetitle}</h1>
				<p class="author-big-card__description">
					{$_modx->resource.introtext}
				</p>
			</div>
		</article>
	</div>
</section>
<section class="article__content">
	<div class="article__content-inner">
		<div class="article__content-box text-constructor">
			{$_modx->resource.content}
		</div>
	</div>
</section>
<section class="certificates">
	<div class="certificates__inner">
		<h2 class="certificates__title">Сертификаты</h2>
		<div class="certificates__gallery js--certificates-gallery">
			<div class="swiper-container">
				<div class="swiper-wrapper" id="lightgallery">
					[[!getImageList?
						&tvname=`overviewsGallery`
						&tpl=`@CODE: <a class="swiper-slide" href="[[+overviewsGallery__img]]">
													<img src="[[+overviewsGallery__img]]" alt="" class="certificates__img">
												</a>`
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
{/block}