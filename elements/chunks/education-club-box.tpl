<div class="preview-card-line preview-card-line_ent grid entertainment__preview-card-line">
    <div class="preview-card-line__img preview-card-line__img_ent">
        <img src="{$_pls['tv.serviceImg']}" alt="">
        {if $tags}
        <div class="preview-card-line__label">
            <p class="preview-card-line__label-text"></p>
        </div>
        {/if}
    </div>
    <p class="preview-card-line__title preview-card-line__title_ent">{$pagetitle}</p>
		
    <div class="preview-card-line__rating rating-box">
        <!--<i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star active"></i>
        <i class="icon-star rating-box__star"></i>-->
    </div>
    <p class="preview-card-line__text">{$introtext}<br><a data-fancybox data-src="#reviews-popup-{$id}" href="javascript:;" class="preview-card-line__reviews">Смотреть отзывы</a></p>
		<div style="display: none;" class="reviews-popup" id="reviews-popup-{$id}">
			{'!getImageList' | snippet : [
				'tvname' => 'reviews',
				'tpl' => '@CODE: <div class="material-review-card">
										<p class="material-review-card__person-name">[[+reviews__person-name]]</p>
										<div class="material-review-card__rating-box" data-rating="[[+reviews__rating]]">
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
										<p class="material-review-card__text">[[+reviews__text]]</p>
									</div>',
				'docid' => ''~$id~'',
				'limit' => '999',
			]}
			{if $_modx->getPlaceholder('total') == 0}
			<script>
				document.querySelector("[data-src='#reviews-popup-{$id}']").style.display = "none";
			</script>
			{/if}
		</div>
    <div class="preview-card-line__action-box">
        <a data-fancybox href="{$_pls['tv.addMaterials']}" class="main-btn preview-card-line__btn">Скачать</a>
				{if $_modx->resource.pagetitle !== 'Документы'}<a data-fancybox data-src="#write-review" href="javascript:;" class="preview-card-line__review" id="write-review-btn" data-id="{$id}">Написать отзыв</a>{/if}
				<style>
					.preview-card-line__review {
						display: block;
						color:#008EB3;
						margin-top: 15px;
						text-align: center;
					}
					.preview-card-line__reviews {
						display: block;
						color:#008EB3;
						margin-top: 15px;
						font-weight: 400;
						font-size: 14px;
					}
				</style>
    </div>
</div>

