{extends 'file:templates/layout.tpl'}

{block 'main'}
[[!msProducts]]
<section class="course-box-full">
    <div class="container grid">
        <div class="course-card-full grid course-box-full__card">
            <img src="{$image}" alt="" class="course-card-full__img img-responsive">
            <div class="course-card-full__content-right">
                <h2 class="course-card-full__title">{$_modx->resource.pagetitle}</h2>
                <p class="course-card-full__text">{$_modx->resource.introtext}</p>
                <div class="course-card-full__price-box grid">
                    <p class="course-card-full__price">{if $price}{$price} Р{/if}</p>
										{if $_modx->isAuthenticated()}
										<form method="post" class="ms2_form">
                      <input type="hidden" name="id" value="{$_modx->resource.id}">
                      <input type="hidden" name="count" value="1">
                      <input type="hidden" name="options" value="[]">
                    	<button type="submit" name="ms2_action" value="cart/add" class="course-card-full__btn">Записаться</button>
										</form>
										{else}
											<a data-fancybox data-src="#login-popup" href="javascript:;" class="course-card-full__btn">Записаться</a>
										{/if}
                </div>
            </div>
        </div>
        <div class="course-card-about course-box-full__about sw-course-card active">
					[[!formatting_content? &content=`{$_modx->resource.content}`]]
        </div>
        {if $_modx->resource.specialistList != '-- Выберите специалиста --'}
          {'msProducts' | snippet : [
            'parents' => '142',
            'tpl' => 'author-card',
            'limit' => '1',
						'includeTVs' => 'specialistFullImg',
						'tvPrefix' => 'tv.',
            'where' => '{"pagetitle:=":"'~$_modx->resource.specialistList~'"}',
        	]}
        {/if}
        <a href="{$_modx->makeUrl(16)}" class="more-btn course-box-full__btn">Прочитать больше о центре</a>

    </div>
</section>
{/block}