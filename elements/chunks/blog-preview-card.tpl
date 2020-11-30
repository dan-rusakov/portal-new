<article class="author-article">
	<a href="{$_modx->makeUrl($id)}" class="author-article__url">
		<div class="author-article__author-box">
			{if $_pls['tv.authorsList'] != '-- Выберите автора --'}
			{'!pdoResources' | snippet : [
				'parents' => '82',
				'tpl' => '@INLINE: <div class="author-article__author-img-box">
                            <img src="[[+tv.specialistImg]]" alt="" class="author-article__author-img" width="50" height="50">
													</div>
													<div class="author-article__author-text-box">
															<p class="author-article__author-name">'~$_pls['tv.authorsList']~'</p>',
				'includeTVs' => 'specialistProfession, specialistImg',
				'tvPrefix' => 'tv.',
				'limit' => '1',
				'where' => '{"pagetitle":"'~$_pls['tv.authorsList']~'"}'

			]}
			{else}
			<div class="author-article__author-img-box">
			</div>
			<div class="author-article__author-text-box">
				<p class="author-article__author-name"></p>
			{/if}
				<time class="author-article__publish-date">[[+publishedon:date=`%d %b %Y`]]</time>
			</div>
		</div>
		<h4 class="author-article__article-name">{$pagetitle}</h4>
		<p class="author-article__description">
			{$introtext | truncate : 150 : '... ' : true}
		</p>
	</a>
</article>