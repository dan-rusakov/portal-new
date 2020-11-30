<article class="review">
	<a data-material-popup-btn href="#material-popup-{$MIGX_id}" class="review__url">
		<img src="[[+center_reviews__photo]]" alt="[[+center_reviews__title]]" class="review__img">
		<p class="review__person-name">[[+center_reviews__person-name]]</p>
		<h4 class="review__title">[[+center_reviews__title]]</h4>
	</a>
</article>
<div class="material-popup-wrapper js--material-popup" id="material-popup-{$MIGX_id}">
	<div class="material-popup-box">
		<div class="material-popup">
			<h4 class="material-popup__material-title">[[+center_reviews__title]]</h4>
			{if $center_reviews__text}
			<p class="material-popup__material-text">[[+center_reviews__text]]</p>
			{/if}
			{if $center_reviews__video}
			<video controls width="100%" height="100%" class="welcome-section__video">
				<source src="[[+center_reviews__video]]" type="video/mp4">
			</video>
			{/if}
		</div>
	</div>
</div>