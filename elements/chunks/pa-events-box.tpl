

<div class="pa-line-card grid">
		<div class="pa-line-card__img-box">
			<img class="pa-line-card__img" src="{$image}" alt="">
			<a data-fancybox href="#material-box-{$id}" class="pa-line-card__video-url"><i class="icon-play-big pa-line-card__icon"></i></a> 
			{if $id | resource : "serviceItem"}
			<div style="display: none;" id="material-box-{$id}">
				[[!displayMaterials? &materialId=`{$id}`]]
			</div>
			{else}
			<div style="display: none;" id="material-box-{$id}">
				Материалов нет
			</div>
			{/if}
		</div>
		<div class="pa-line-card__text-box">
				<p class="pa-line-card__title">{$pagetitle}</p>
				<p class="pa-line-card__text">{$introtext | truncate : 180 : '...' : true}</p>
				<a data-fancybox data-src="#extra-material-content-{$id}" href="javascript:;" class="pa-line-card__extra-material">Дополнительные материалы</a>
		</div>
		<div class="pa-line-card__action-box">
		
				<div class="pa-line-card__description-box">
						<div class="pa-line-card__date">
								<i class="pa-line-card__date-icon icon-form-calendar"></i>
								<p class="pa-line-card__date-text">{$_pls['tv.dateServicePage'] | date_format: '%d %B %Y'}</p>
						</div>
						<div class="pa-line-card__date">
								<i class="pa-line-card__date-icon icon-clock"></i>
								<p class="pa-line-card__date-text">в {$_pls['tv.dateServicePage'] | date_format: '%H:%M'}</p>
						</div>
				</div>
				<a data-fancybox href="#material-box-{$id}" class="main-btn pa-line-card__watch-btn">Смотреть</a>
		</div>
</div>
<div style="display: none;" class="extra-material-popup" id="extra-material-content-{$id}">
	<p class="extra-material-popup__title">Дополнительные материалы</p>
	{'!getImageList' | snippet : [
		'tvname' => 'extraMaterial',
		'tpl' => '@CODE: <a href="[[+extraMaterial__material]]" class="extra-material-popup__url" target="_blank">[[+extraMaterial__name]]</a>',
		'docid' => ''~$id~'',
		'limit' => '999',
	]}
	{if $_modx->getPlaceholder('total') == 0}
	<script>
		document.querySelector("[data-src='#extra-material-content-{$id}']").style.display = "none";
	</script>
	{/if}
</div>
