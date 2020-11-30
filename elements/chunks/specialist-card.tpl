<article class="author-card">
	<a href="[[~[[+id]]]]" class="author-card__url">
		<div class="author-card__img-box">
			<img src="[[+tv.specialistFullImg]]" alt="" class="author-card__img">
		</div>
		<div class="author-card__text-box">
			<b class="author-card__name">{if $_modx->resource.specialistList}{$_modx->resource.specialistList}{else}{$pagetitle}{/if}</b>
			<p class="author-card__text">
				[[+introtext]]
			</p>
		</div>
	</a>
</article>