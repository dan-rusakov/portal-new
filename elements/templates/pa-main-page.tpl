{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<div class="announce announce-box">
					<p class="announce__text announce__text_bold">Уважаемый пользователь,</p>
					<p class="announce__text">Мы рады приветствовать Вас на нашем сайте.</p>
					<p class="announce__text">Здесь Вас ждет большое колличество интересной, а самое главное, полезной информации от настоящих специалистов.</p>
			</div> 
	<ul class="materials-announce grid">
<div class="materials-announce__box">
	<li class="materials-announce__header materials-announce__box-header">Мероприятия</li>
	{'!msProducts' | snippet : [
		'parents' => '6,17,145,18,19',
		'tpl' => '@INLINE: 	<li class="materials-announce__item"><a href="{$_modx->makeUrl($id)}" class="materials-announce__url">{$pagetitle}</a></li>',
		'limit' => '999',
		'optionFilters' => '{"services_type:=":"Мероприятие"}'
	]}
</div>
<div class="materials-announce__box">
	<li class="materials-announce__header materials-announce__box-header">Консультации</li>
	{'!msProducts' | snippet : [
		'parents' => '6,17,145,18,19',
		'tpl' => '@INLINE: 	<li class="materials-announce__item"><a href="{$_modx->makeUrl($id)}" class="materials-announce__url">{$pagetitle}</a></li>',
		'limit' => '999',
		'optionFilters' => '{"services_type:=":"Консультация"}'
	]}
</div>
<div class="materials-announce__box">
	<li class="materials-announce__header materials-announce__box-header">Материалы</li>
	{'!msProducts' | snippet : [
		'parents' => '6,17,145,18,19',
		'tpl' => '@INLINE: 	<li class="materials-announce__item"><a href="{$_modx->makeUrl($id)}" class="materials-announce__url">{$pagetitle}</a></li>',
		'limit' => '999',
		'optionFilters' => '{"services_type:=":"Материал"}'
	]}
</div>
</ul>
{/block}