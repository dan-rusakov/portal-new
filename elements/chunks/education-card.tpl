<article class="product-card-mini">
	<a href="{$_modx->makeUrl($id)}" class="product-card-mini__url">
		<div class="product-card-mini__2-cols-box">
			<div class="product-card-mini__img-box">
				<div class="product-card-mini__img-wrap">
					<img src="{$image | replace : " " : "%20"}" alt="" class="product-card-mini__img">
				</div>
			</div>
			<div class="product-card-mini__text-box">
				<p class="product-card-mini__author">
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
				<p class="product-card-mini__category">{$services_radio.0}</p>
			</div>
		</div>
		<h4 class="product-card-mini__title">
			{$pagetitle}
		</h4>
	</a>
</article>