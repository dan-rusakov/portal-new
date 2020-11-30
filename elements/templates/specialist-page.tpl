{extends 'file:templates/layout.tpl'}

{block 'main'}
[[!msProducts]]
<section class="course-box-full" id="msProduct">
    <div class="container">
        <div class="course-card-full course-card-full_specialist grid course-box-full__card">
            <img src="[[*specialistFullImg]]" alt="" class="course-card-full__img img-responsive">
            <div class="course-card-full__content-right">
                <h2 class="course-card-full__title">{$_modx->resource.pagetitle}</h2>
                <p class="course-card-full__text">{$_modx->resource.introtext}</p>
                <div class="course-card-full__price-box grid">
                    {*<p class="course-card-full__price">{if $price}{$price} Р{/if}</p>
                    <form method="post" class="ms2_form">
                      <input type="hidden" name="id" value="{$_modx->resource.id}">
                      <input type="hidden" name="count" value="1">
                      <input type="hidden" name="options" value="[]">
                      <button class="course-card-full__btn" type="submit" name="ms2_action" value="cart/add">Записаться</button>
                    </form>*}
                </div>
            </div>
        </div>
        <div class="course-card-about course-box-full__about sw-course-card active">
					{$_modx->resource.content}
					<div class="owl-carousel specialist-awards-carousel">
						[[!getImageList?
								&tvname=`overviewsGallery`
								&tpl=`@CODE: <a href="[[+overviewsGallery__img]]"><img src="[[+overviewsGallery__img]]" class="img-responsive"></a>`
								&docid=`[[*id]]`
								&limit=`999`
						]]
					</div>
        </div>     
    </div>
</section>
{/block}