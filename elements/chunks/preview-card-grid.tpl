<article class="article-card">
	<a href="{$_modx->makeUrl($id)}" class="article-card__url">
		<h4 class="article-card__title">{$pagetitle}</h4>
		<p class="article-card__text">
			{$introtext | truncate : 150 : '...' : true}
		</p>
		<p class="article-card__category">#[[+tv.articleTopic]]</p>
	</a>
</article>