{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => $_modx->resource.pagetitle, 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
[[!addNewReview]]
<section class="entertainment"> 
    <div class="container grid">    
        <div id="pdopage" class="grid">
            <div class="rows">
                {'!pdoPage' | snippet : [
                    'parents' => ''~$_modx->resource.id~'',
                    'tpl' => 'education-club-box',
                    'includeTVs' => 'serviceImg, promoLabel, addMaterials',
                    'tvPrefix' => 'tv.',
                    
                    'limit' => '3',
                    'ajaxMode' => 'button',
                    'ajaxElemMore' => '#pdopage .more-btn',
                    'ajaxTplMore' => '@INLINE <a class="more-btn entertainment__btn">Показать еще</a> ',
                    'processTVs' => '1'
                ]}
            </div>
            {$_modx->getPlaceholder('page.nav')}
        </div>
    </div>
</section>
<div class="pa-content-box write-review" style="display: none;" id="write-review">
	<p class="pa-content-box__text">Нам важно Ваше мнение, и будем рады, если Вы оставите свой отзыв о данном материале.</p>
	<form class="text-review-form rating-box" id="write-review-form">
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
{/block}

{block 'blog-scripts'}
<script>
var materialId = 0;
document.querySelector('.entertainment').addEventListener('click', function(evt){
	if(evt.target.id == 'write-review-btn'){
		materialId = evt.target.dataset.id;
	}
})
$('#write-review-form').on('submit', function(){
	//var materialId1 = 159;
	$.ajax({
		type: 'POST',
		url: document.location.href,
		data: $(this).serialize() + '&materialId=' + materialId + '&personName=Аноним',
	}).done(function( html ) {
			$('#result').html(html);
		});
	alert('Спасибо, что оставили отзыв!');
	$.fancybox.close();
	return false;
});
</script>
{/block}