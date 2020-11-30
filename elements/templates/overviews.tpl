{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Обзоры', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
<section class="overviews">
		<overviews-list
			:images='[
				"assets/img/overviews-img1.jpg",
				"assets/img/overviews-img2.jpg",
				"assets/img/overviews-img3.jpg",
			]'
			:urls='[
				"{$_modx->makeUrl(198)}",
				"{$_modx->makeUrl(4)}",
				"{$_modx->makeUrl(200)}",
			]'
			:text='{$_modx->resource.overviews_list}'
		></overviews-list>
    <div class="container">
        <p class="overviews__description">[[*content]]</p>
    </div>
</section>
{/block} 