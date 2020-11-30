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
					Автор - <br>Кондратьева Ольга Михайловна
				</p>
				<p class="product-card-mini__category">{$services_radio.0}</p>
			</div>
		</div>
		<h4 class="product-card-mini__title">
			{$pagetitle}
		</h4>
	</a>
</article>