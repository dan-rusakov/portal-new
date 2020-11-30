{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="courses-page">
	{'!mFilter2' | snippet : [
		'parents' => '6,145', 
		'limit' => '8',
		'tpl' => 'education-card',
		'tplOuter' => 'services-content',
		'tplFilter.outer.default' => 'service-filter',
		'tplFilter.row.default' => 'service-filter-item',
		'element' => 'msProducts',
		'includeTVs' => 'serviceTopic, serviceImg, servicePrice, eventsTopic, dateServicePage, locationServicePage, specialistList, specialistProfession',
		'tvPrefix' => 'tv.',
		'tplPage' => '@INLINE <li class="pagination__item"><a href="{$href}" class="pagination__item-link">{$pageNo}</a></li>',
		'tplPageActive' => '@INLINE <li class="pagination__item active"><a href="{$href}" class="pagination__item-link">{$pageNo}</a></li>',
		'tplPageWrapper' => '@INLINE <div class="pagination grid">{$prev}<ul class="pagination__list">{$pages}</ul>{$next}</div>',
		'tplPagePrev' => '@INLINE <a href="{$href}" class="pagination__prev"><i class="icon-bold-arrow-left"></i></a>',
		'tplPagePrevEmpty' => '@INLINE <a href="{$href}" class="pagination__prev disabled"><i class="icon-bold-arrow-left"></i></a>',
		'tplPageNext' => '@INLINE <a href="{$href}" class="pagination__next"><i class="icon-bold-arrow-right"></i></a>',
		'tplPageNextEmpty' => '@INLINE <a href="{$href}" class="pagination__next disabled"><i class="icon-bold-arrow-right"></i></a>',
		'ajaxMode' => 'default',
		'processTVs' => '1',
		'ajaxElemPagination' => '#pdopage>.pagination',
		'filters' => 'msoption|services_radio', 
	]}
</section>
<section class="callback-section main-page__callback-section">
	<div class="callback-section__inner">
		<div class="callback-section__card">
			<div class="callback-section__text-box">
				<h2 class="callback-section__title">Поможем выбрать</h2>
				<p class="callback-section__description">
					Если у вас есть вопросы о формате или вы не знаете что выбрать, оставьте свой номер: мы позвоним, чтобы ответить на все ваши вопросы.
				</p>
			</div>
			<form action="#!" method="post" class="callback-section__form js--callback-form">
				<input type="text" name="name" class="text-input callback-section__input" placeholder="Имя">
				<input type="text" name="phone" class="text-input callback-section__input" placeholder="Телефон">
				<input type="text" name="email" class="text-input callback-section__input" placeholder="Почта">
				<label class="callback-section__checkbox-label">
					<input type="checkbox" class="callback-section__checkbox-input visually-hidden js--callback-licence-agreement">
					<span class="callback-section__checkbox"></span>
					<p class="callback-section__licence-text">
						Я согласен с условиями обработки <a href="#!" class="callback-section__licence-url" target="_blank">персональных данных</a>
					</p>
				</label>
				<button class="callback-section__submit-btn js--callback-sumbit-btn" type="submit" disabled>Отправить</button>
			</form>
		</div>
	</div>
</section>
{/block}

{block 'blog-scripts'}

<script type="text/javascript">
	$(document).ready(function() {
		$('.filter__text').on('click', function(){
			$(this).toggleClass('active');
			if ($(this).index() != 0) {
				$('.filter__text').eq(0).removeClass('active');
			} else {
				$('.filter__text').removeClass('active');
				$(this).addClass('active');
			}
		});
	});
</script>
{/block}