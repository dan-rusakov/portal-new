<div class="pa-line-card grid">
	<div class="pa-line-card__img-box pa-line-card__img-box_materials">
		<img class="pa-line-card__img" src="{$image}" alt="">
		{* <a data-fancybox href="{$_pls['tv.addMaterials']}" class="pa-line-card__video-url"><i class="icon-play-big pa-line-card__icon"></i></a>  *}
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
		<p class="pa-line-card__title">{$pagetitle}{$orders}</p>
		<p class="pa-line-card__text">{$introtext | truncate : 180 : '...' : true}</p>
		<a data-fancybox data-src="#extra-material-content-{$id}" href="javascript:;" class="pa-line-card__extra-material">Дополнительные материалы</a>
	</div>
	<div class="pa-line-card__action-box">
		<div class="pa-line-card__description-box pa-line-card__description-box_materials">
		{if $_pls['tv.specialistList'] != '-- Выберите специалиста --'} 
			{'!msProducts' | snippet : [
					'parents' => '142',
					'tpl' => '@INLINE: 	<div class="pa-line-card__specialist grid">
										<div class="pa-line-card__specialist-img-box"><img src="{$image}" alt="" class="pa-line-card__specialist-img"></div>
										<p class="pa-line-card__specialist-name">{$article}</p>
										<p class="pa-line-card__specialist-profession">{$specialist_type.0}</p>
									</div>',
					'limit' => '1',
					'where' => '{"pagetitle":"'~$_pls['tv.specialistList']~'"}'
			]}
    {/if}
		</div>
		<a data-fancybox href="#material-box-{$id}" class="main-btn pa-line-card__watch-btn">Смотреть</a>
		{if $_pls['tv.specialistList'] != '-- Выберите специалиста --'}
			<a href="https://wa.me/{'!pdoResources' | snippet : [
																'parents' => '142',
																'includeTVs' => 'specialist_phone',
																'tpl' => '@INLINE: 	[[+tv.specialist_phone]]',
																'limit' => '1',
																'where' => '{"pagetitle":"'~$_pls['tv.specialistList']~'"}'
														]}
			" class="left-menu__header-text pa-line-card__watch-btn" style="display: block; margin-top: 15px; color: #f4656d;" target="_blank">Связаться со специалистом</a>
		{/if}

		{if $id | resource : "quiz"}
		<quiz
			:default-quiz='{$id | resource : "quiz"}'
			:id='{$id}'
			user-name='[[+modx.user.id:userinfo=`fullname`]]'
			user-email='[[+modx.user.id:userinfo=`email`]]'
			material='{$pagetitle}'
		></quiz>
		{/if}
		
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