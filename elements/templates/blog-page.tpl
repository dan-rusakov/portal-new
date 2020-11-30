{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pBg' => $_modx->resource.pBg ]}
<section class="article__content article__content--article-page">
	<div class="article__content-inner">
		<div class="article__content-box text-constructor">
			{$_modx->resource.content}
		</div>
	</div>
</section>
{/block}
