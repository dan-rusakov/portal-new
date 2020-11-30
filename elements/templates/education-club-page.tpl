{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="course-box-full">
    <div class="container grid">
        <div class="course-card-full grid course-box-full__card">
            <img src="{$_modx->resource.serviceImg}" alt="" class="course-card-full__img img-responsive">
            <div class="course-card-full__content-right">
                <h2 class="course-card-full__title">{$_modx->resource.pagetitle}</h2>
                <p class="course-card-full__text">{$_modx->resource.introtext}</p>
                <div class="course-card-full__price-box grid">
                    <p class="course-card-full__price">{if $_modx->resource.servicePrice}{$_modx->resource.servicePrice} Р{/if}</p>
										<a data-fancybox data-src="#subscribe-popup" href="javascript:;" class="course-card-full__btn">Купить</a>
                </div>
            </div>
        </div>
        <div class="course-card-about course-box-full__about sw-course-card active">
					{$_modx->resource.content}
        </div>
    </div>
</section>
{/block}