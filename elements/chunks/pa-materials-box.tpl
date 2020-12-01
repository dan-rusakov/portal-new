<article class="product-card">
	<a data-material-popup-btn href="#material-popup-{$id}"  class="product-card__url">
		<div class="product-card__img-box">
			<div class="product-card__img-wrap">
				<img src="{$image}" alt="" class="product-card__img">
			</div>
		</div>
		<div class="product-card__text-box">
			{if $_pls['tv.dateServicePage']}
			<time class="product-card__date">{$_pls['tv.dateServicePage'] | date_format: '%d %B %Y, %H:%M'}</time>
			{/if}
			<h4 class="product-card__title">{$pagetitle}</h4>
			{if $_pls['tv.specialistList'] != '-- Выберите специалиста --'}
			<p class="product-card__author">Автор - <br>{$_pls['tv.specialistList']}</p>
			{/if}
		</div>
	</a>
</article>
<div class="material-popup-wrapper js--material-popup" id="material-popup-{$id}">
	<div class="material-popup-box">
		<div class="material-popup">
			<h4 class="material-popup__title">Материалы</h4>
			{if $id | resource : "serviceItem"}
			<ul class="material-popup__content">
				[[!displayMaterials? &materialId=`{$id}`]]
			</ul>
			{else}
			<ul class="material-popup__content">
				<li class="material-popup__item">
					<h5 class="material-popup__material-title">Материалов нет</h5>
				</li>
			</ul>
			{/if}
			<h4 class="material-popup__title">Дополнительные материалы</h4>
			{'!getImageList' | snippet : [
				'tvname' => 'extraMaterial',
				'tpl' => '@CODE: <li class="material-popup__item">
													<h5 class="material-popup__material-title">[[+extraMaterial__name]]</h5>
													<a href="[[+extraMaterial__material]]" class="material-popup__download-btn" target="_blank" rel="noopener nofollow">
														Скачать
														<svg class="material-popup__download-icon" width="42" height="8">
															<use xlink:href="#icon-arrow-long"></use>
														</svg>
													</a>
												</li>',
				'docid' => ''~$id~'',
				'limit' => '999',
				'toPlaceholder' => 'extra-materials',
			]}
			{if $_modx->getPlaceholder('extra-materials')}
			<ul class="material-popup__content">
				{$_modx->getPlaceholder('extra-materials')}
			</ul>
    	{else}
			<ul class="material-popup__content">
				<li class="material-popup__item">
					<h5 class="material-popup__material-title">Дополнительных материалов нет</h5>
				</li>
			</ul>
			{/if}
		</div>
	</div>
</div>
