<div class="service-card">
	<div class="service-card__img" style="background-image: url({$image | replace : " " : "%20"})"></div>
	<div class="service-card__content grid">
		<p class="service-card__topic">#{$services_radio.0}</p>
		<p class="service-card__title">{$pagetitle}</p>

		{if $services_type.0 == 'Материал'}
			{if $_pls['tv.specialistList'] != '-- Выберите специалиста --'}
				{'!msProducts' | snippet : [
					'parents' => '142',
					'tpl' => '@INLINE: 									
											<div class="service-card__specialist grid">
												<img src="{$image}" alt="" class="service-card__specialist-img">
												<p class="service-card__specialist-name">'~$_pls['tv.specialistList']~'</p>
												<p class="service-card__specialist-profession">{$specialist_type.0}</p>
											</div>',
					'limit' => '1',
					'where' => '{"pagetitle":"'~$_pls['tv.specialistList']~'"}'

				]}
			{else}
				<p class="service-card__description">{$introtext | truncate : 64 : '...' : true}</p>
			{/if}
		{/if}

		{if $services_type.0 == 'Мероприятие'}
			<div class="service-card__info grid">
				<i class="service-card__info-icon icon-form-calendar"></i> 
				<p class="service-card__info-text">{$_pls['tv.dateServicePage'] | date_format: '%d %B %Y'}</p>
			</div>
			<div class="service-card__info grid">
				<i class="service-card__info-icon icon-clock"></i>
				<p class="service-card__info-text">{$_pls['tv.dateServicePage'] | date_format: '%H:%M'}</p>
			</div>
		{/if}

		{if $services_type.0 == 'Консультация'}
			{if $_pls['tv.specialistList'] != '-- Выберите специалиста --'}
				{'!msProducts' | snippet : [
					'parents' => '142',
					'tpl' => '@INLINE: 									
											<div class="service-card__specialist grid">
												<img src="{$image}" alt="" class="service-card__specialist-img">
												<p class="service-card__specialist-name">'~$_pls['tv.specialistList']~'</p>
												<p class="service-card__specialist-profession">{$specialist_type.0}</p>
											</div>',
					'limit' => '1',
					'where' => '{"pagetitle":"'~$_pls['tv.specialistList']~'"}'

				]}
			{else}
				<p class="service-card__description">{$introtext | truncate : 64 : '...' : true}</p>
			{/if}
		{/if}

		<div class="service-card__price-box grid">
			<p class="service-card__price">{if $services_min_price.0}От {$services_min_price.0} Р{elseif $price}{$price} Р{/if}</p>
			<a href="{$_modx->makeUrl($id)}" class="service-card__btn">Подробнее</a>
		</div>
	</div>
</div>