{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Отзывы', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
[[!addCenterReview]]
<section class="reviews">
    <div class="container">
        {*<div id="pdopage" class="grid">
            <div class="rows grid">
            {'!pdoPage@AjaxPaginator' | snippet : [
                'parents' => $_modx->resource.id, 
                'limit' => '3',
                'tpl' => 'review-card',
                'includeTVs' => 'rating, pBg, content',
                'ajaxMode' => 'button',
                'tvPrefix' => 'tv.',
                'ajaxElemMore' => '#pdopage .more-btn', 
                'ajaxTplMore' => '@INLINE <a href="#" onClick="return false;" class="more-btn reviews__btn">Показать еще</a>',
                'processTVs' => '1',
                'includeContent' => '1'
            ]}
            </div>
            {$_modx->getPlaceholder('page.nav')}
        </div>  *}


				{'!getImageList' | snippet : [
					'tvname' => 'center_reviews',
					'tpl' => 'centerReviews',
					'docid' => '15',
					'limit' => '99',
				]}

			{if $_modx->isAuthenticated()}
				<div class="pa-content-box">
					<p class="pa-content-box__text">Нам важно Ваше мнение, и мы будем рады, если Вы оставите свой отзыв о нашем портале.</p>
					<form class="text-review-form rating-box" id="center-review">
						<div class="text-review-form__rating-box">
							<input type="radio" class="text-review-form__input" name="rating" value="5" id="star1">
							<label for="star1" class="text-review-form__label"><i class="icon-star rating-box__star text-review-form__icon"></i></label>
							<input type="radio" class="text-review-form__input" name="rating" value="4" id="star2">
							<label for="star2" class="text-review-form__label"><i class="icon-star rating-box__star text-review-form__icon"></i></label>
							<input type="radio" class="text-review-form__input" name="rating" value="3" id="star3">
							<label for="star3" class="text-review-form__label"><i class="icon-star rating-box__star text-review-form__icon"></i></label>
							<input type="radio" class="text-review-form__input" name="rating" value="2" id="star4">
							<label for="star4" class="text-review-form__label"><i class="icon-star rating-box__star text-review-form__icon"></i></label>
							<input type="radio" class="text-review-form__input" name="rating" value="1" id="star5">
							<label for="star5" class="text-review-form__label"><i class="icon-star rating-box__star text-review-form__icon"></i></label>
						</div>	
						<div class="text-review-form__review-box grid">
							<textarea name="review" id="" rows="5" class="text-review-form__textarea" placeholder="Напишите свое мнение о данном курсе"></textarea>					
							<button type="submit" class="main-btn text-review-form__btn">Оставить отзыв</button>
						</div>
					</form>
				</div>
			{/if}
    </div>
</section>
<p id="result"></p>
{/block} 

{block 'blog-scripts'}
<script>
$('#center-review').on('submit', function(){
	//var materialId1 = 159;
	$.ajax({
		type: 'POST',
		url: document.location.href,
		data: $(this).serialize() + '&materialId={$_modx->resource.id}',
	}).done(function( html ) {
			$('#result').html(html);
		});
	alert('Спасибо, что оставили отзыв!');
	$.fancybox.close();
	return false;
});
</script>
{/block}