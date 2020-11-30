<div class="review-card grid">
    <a href="#" class="review-card__video grid" style="background-image: url();"></a>
    <p class="review-card__name">[[+reviews__person-name]]</p>
    <div class="review-card__rating rating-box">
        {var $ratingNumber = $reviews__rating}
        {if $ratingNumber == 1}
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        {elseif $ratingNumber == 2}
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        {elseif $ratingNumber == 3}
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star"></i>
        <i class="icon-star rating-box__star"></i>
        {elseif $ratingNumber == 4}
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star"></i>
        {else}
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        {/if}
    </div>
    <div class="review-card__text">[[+reviews__text]]</div>
    <p class="review-card__published-time"></p>
</div>