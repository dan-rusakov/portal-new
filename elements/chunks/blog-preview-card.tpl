<a href="{$_modx->makeUrl($id)}" class="note">
    {if $_pls['tv.authorsList'] != '-- Выберите автора --'}
		{'!pdoResources' | snippet : [
			'parents' => '82',
			'tpl' => '@INLINE: <div class="note__header grid">
														<img src="[[+tv.specialistImg]]" alt="" class="note__img img-responsive">
														<p class="note__name">'~$_pls['tv.authorsList']~'</p>',
			'includeTVs' => 'specialistProfession, specialistImg',
			'tvPrefix' => 'tv.',
      'limit' => '1',
			'where' => '{"pagetitle":"'~$_pls['tv.authorsList']~'"}'

		]}
		<p class="note__published-time">[[+publishedon:date=`%d %b %Y`]]</p>
	</div>
	{else}
	<div class="note__header grid"></div>
	{/if}	
    <div class="note__content">
        <p class="note__title">{$pagetitle}</p>
        <p class="note__text">{$introtext | truncate : 120 : '... ' : true}</p>
    </div>
</a>