{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Блог', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg ]}
[[!addNewArticleReview]]
<section class="article">
    <div class="container grid">
        <div class="article-card article__article-card">
            <p class="article-card__topic">#{$_modx->resource.articleTopic}</p>
            <p class="article-card__title">{$_modx->resource.pagetitle}</p>
            {$_modx->resource.content}
            {if $_modx->resource.authorsList != '-- Выберите автора --'}
                {'pdoResources' | snippet : [
                    'parents' => '82',
                    'tpl' => '@INLINE: <div class="article-card__author grid">
                                            <div class="article-card__author-img"><img src="[[+tv.specialistImg]]" alt="" class=""></div>	
                                            <p class="article-card__author-name">{$_modx->resource.authorsList}</p>
                                            <p class="article-card__published-time">[[*publishedon:strtotime:date=`%d %b %Y`]]</p>
                                        </div>',
                    'includeTVs' => 'specialistImg',
                    'tvPrefix' => 'tv.',
                    'limit' => '1',
                     
                    'where' => '{"pagetitle:=":"'~$_modx->resource.authorsList~'"}'

                ]}
            {/if}
            
        </div>
        <div class="article-reviews">
            <div class="pa-content-box write-review">
                <p class="pa-content-box__text">Нам важно Ваше мнение, и будем рады, если Вы оставите свой отзыв об этой статье.</p>
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
            <style>
                .material-review-card {
                    max-width: 100% !important;
                }
                .material-review-card__date {
                    margin: 10px 0 0;
                    font-size: 14px;
                    color: #797979; 
                }
                .material-review-card__text {
                    font-size: 20px;
                }
            </style>

            {'!getImageList' | snippet : [
				'tvname' => 'articleReview',
				'tpl' => '@CODE: <div class="material-review-card">
                                    <p class="material-review-card__person-name">[[+articleReviews_userName]]</p>
                                    <div class="material-review-card__rating-box" data-rating="[[+articleReviews_rating]]">
                                        <div class="material-review-card__rating-star">
                                            <i class="icon-star material-review-card__rating-icon"></i>
                                        </div>
                                        <div class="material-review-card__rating-star">
                                            <i class="icon-star material-review-card__rating-icon"></i>
                                        </div>
                                        <div class="material-review-card__rating-star">
                                            <i class="icon-star material-review-card__rating-icon"></i>
                                        </div>
                                        <div class="material-review-card__rating-star">
                                            <i class="icon-star material-review-card__rating-icon"></i>
                                        </div>
                                        <div class="material-review-card__rating-star">
                                            <i class="icon-star material-review-card__rating-icon"></i>
                                        </div>
                                    </div>
                                    <p class="material-review-card__text">[[+articleReviews_review]]</p>
                                    <p class="material-review-card__date">[[+articleReviews_date]]</p>
                                </div>',
				'docid' => '172',
				'limit' => '999',
			]}


        </div>
        <div class="more-articles grid">
            <p class="more-articles__title">Похожие статьи</p>
            {'!pdoResources' | snippet : [
                'parents' => '$_modx->resource.id', 
                'limit' => '4',
                'tpl' => 'preview-card-grid',
                'includeTVs' => 'articleTopic, pBg',
                'sortdir' => 'DESC',
                'where' => '{"articleTopic:=":"'~$_modx->resource.articleTopic~'", "AND:id:!=":"'~$_modx->resource.id~'"}'
            ]}
            <a href="{$_modx->makeUrl(9)}" class="more-articles__btn more-btn">Показать больше статей</a>
        </div>
    </div>
</section>

{/block}

{block 'blog-scripts'}

<script type="text/javascript">
$(document).on('click', '.article__filter .filter__text', function(){

    var blogPageUrl = window.location.pathname.split('/');
    blogPageUrl.pop();
    blogPageUrl = blogPageUrl.join('/');
    blogPageUrl = window.location.origin + blogPageUrl;

    window.location.href = blogPageUrl + '#' + $(this).data('val');

});
</script>
<script>
var materialId = '{$_modx->resource.id}';

$('#write-review-form').on('submit', function(){
	$.ajax({
		type: 'POST',
		url: document.location.href,
		data: $(this).serialize() + '&materialId=' + materialId,
	}).done(function( html ) {
			//$('#result').html(html);
		});
	alert('Спасибо, что оставили отзыв!');
	return false;
});
</script>

{/block}
