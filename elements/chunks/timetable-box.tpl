<article class="product-card">
	<a href="{$_modx->makeUrl($id)}" class="product-card__url">
		<div class="product-card__img-box">
			<div class="product-card__img-wrap">
				<img src="{$image | replace : " " : "%20"}" alt="{$pagetitle}" class="product-card__img">
			</div>
		</div>
		<div class="product-card__text-box">
			<h4 class="product-card__title">{$pagetitle}</h4>
			<p class="product-card__author">
				{'msProducts' | snippet : [
					'parents' => '142',
					'tpl' => '@INLINE: [[+pagetitle]]',
					'includeTVs' => 'specialistFullImg',
					'tvPrefix' => 'tv.',
					'limit' => '999',
					'where' => '{"id:IN":['~$_pls['tv.course_specialists']~']}',
					'toPlaceholder'=>'specialists'
				]}
				{if $_modx->getPlaceholder('specialists')}
				Авторы - <br>
				{$_modx->getPlaceholder('specialists')}
				{/if}
			</p>
		</div>
	</a>
</article>