<div class="pa-service-card grid">
    <div class="pa-service-card__img" style="background-image: url({$image | replace : " " : "%20"})"></div>
    <div class="pa-service-card__content">
        <p class="pa-service-card__topic">#{$services_radio.0}</p>
        <p class="pa-service-card__title">{$pagetitle}</p>
        <p class="pa-service-card__mobile-price">{$price} Р</p>
        <div class="pa-service-card__text-box">
					{if $services_type.0 == 'Материал'}
						{if $_pls['specialistList'] != '-- Выберите специалиста --'}
							{'!msProducts' | snippet : [
								'parents' => '142',
								'tpl' => '@INLINE: 									
														<div class="service-card__specialist grid">
															<img src="{$image}" alt="" class="service-card__specialist-img">
															<p class="service-card__specialist-name">{$article}</p>
															<p class="service-card__specialist-profession">{$specialist_type.0}</p>
														</div>',
								'limit' => '1',
								'where' => '{"pagetitle":"'~$_pls['specialistList']~'"}'

							]}
						{else}
							<p class="pa-service-card__text">{$introtext | truncate : 64 : '...' : true}</p>
						{/if}
					{/if}

					{if $services_type.0 == 'Мероприятие'}
						<div class="pa-service-card__info grid">
							<i class="pa-service-card__info-icon icon-form-calendar"></i> 
							<p class="pa-service-card__info-text">{$_pls['dateServicePage'] | date_format: '%d %B %Y'}</p>
						</div>
						<div class="pa-service-card__info grid">
							<i class="pa-service-card__info-icon icon-clock"></i>
							<p class="pa-service-card__info-text">{$_pls['dateServicePage'] | date_format: '%H:%M'}</p>
						</div>
					{/if}

					{if $services_type.0 == 'Консультация'}
						<p class="pa-service-card__text">{$introtext | truncate : 64 : '...' : true}</p>
					{/if}



        </div>
        <div class="pa-service-card__price-box grid">
            <p class="pa-service-card__price">{$price} Р</p>
            <a href="{$_modx->makeUrl($id)}" class="pa-service-card__btn">Подробнее</a>
        </div>
    </div>
</div>	