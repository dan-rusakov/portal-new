{extends 'file:templates/layout.tpl'}

{block 'main'}
[[!msProducts]]
<section class="course-big-card-section course-page__course-big-card-section">
	<div class="course-big-card__inner">
		<article class="course-big-card">
			<div class="course-big-card__img-box">
				<img src="{$image}" alt="" class="course-big-card__img">
			</div>
			<div class="course-big-card__text-box">
				<div class="course-big-card__date-line">
					<p class="course-big-card__category">{$_modx->resource.services_radio[0]}</p>
				</div>
				<h1 class="course-big-card__title">
					{$_modx->resource.pagetitle}
				</h1>
				<p class="course-big-card__description">
					{$_modx->resource.introtext}
				</p>
				{if $_modx->isAuthenticated()}
				<form method="post" class="ms2_form">
					<input type="hidden" name="id" value="{$_modx->resource.id}">
					<input type="hidden" name="count" value="1">
					<input type="hidden" name="options" value="[]">
					<div class="course-big-card__buy-line">
						<strong class="course-big-card__price">{if $price}{$price} Р{/if}</strong>
						<button class="course-big-card__buy-btn" type="submit" name="ms2_action" value="cart/add">Записаться</button>
					</div>
				</form>
				{else}
				<form method="post">
					<input type="hidden" name="options" value="[]">
					<div class="course-big-card__buy-line">
						<strong class="course-big-card__price">{if $price}{$price} Р{/if}</strong>
						<button type="button" class="course-big-card__buy-btn js--register-popup-btn" id="buyProductBtn">Записаться</a>
					</div>
				</form>
				{/if}
			</div>
		</article>
	</div>
</section>
<section class="advantages">
	<div class="advantages__inner">
		<h2 class="advantages__title">Кому подойдёт этот курс</h2>
		<div class="advantages__content-box">
			[[!getImageList?
				&tvname=`for_whom`
				&tpl=`@CODE: <article class="advantage-card">
											<img
												src="[[+for_whom_image]]"
												alt="Корона"
												class="advantage-card__img"
												loading="lazy"
											>
											<h4 class="advantage-card__title">[[+for_whom_title]]</h4>
											<p class="advantage-card__text">[[+for_whom_text]]</p>
										</article>`
				&docid=`[[*id]]`
				&limit=`3`
			]]
		</div>
	</div>
</section>
<section class="modules-section">
	<div class="modules-section__inner">
		<h2 class="modules-section__title">Модули курса</h2>
		[[!getImageList?
			&tvname=`serviceItem`
			&tpl=`serviceItem`
			&docid=`[[*id]]`
			&limit=`999`
		]]
	</div>
</section>
<section class="education-stages-rect">
	<div class="education-stages-rect__inner">
		<article class="education-stage">
			<div class="education-stage__img-box">
				<img src="assets/img/education-stage-img1.svg" alt="" class="education-stage__img" loading="lazy">
			</div>
			<div class="education-stage__text-box">
				<h4 class="education-stage__title">Изучаете тему</h4>
				<p class="education-stage__text">В курсе — практические видеоуроки.</p>
			</div>
		</article>
		<article class="education-stage">
			<div class="education-stage__img-box">
				<img src="assets/img/education-stage-img2.svg" alt="" class="education-stage__img" loading="lazy">
			</div>
			<div class="education-stage__text-box">
				<h4 class="education-stage__title">Выполняете задания</h4>
				<p class="education-stage__text">В том темпе, в котором вам удобно.</p>
			</div>
		</article>
		<article class="education-stage">
			<div class="education-stage__img-box">
				<img src="assets/img/education-stage-img3.svg" alt="" class="education-stage__img" loading="lazy">
			</div>
			<div class="education-stage__text-box">
				<h4 class="education-stage__title">Работаете с наставником</h4>
				<p class="education-stage__text">Закрепляете знания и исправляете ошибки.</p>
			</div>
		</article>
		<article class="education-stage">
			<div class="education-stage__img-box">
				<img src="assets/img/education-stage-img4.svg" alt="" class="education-stage__img" loading="lazy">
			</div>
			<div class="education-stage__text-box">
				<h4 class="education-stage__title">Защищаете дипломную работу</h4>
				<p class="education-stage__text">И дополняете ею своё портфолио.</p>
			</div>
		</article>
	</div>
</section>
<section class="course-program">
	<div class="course-program__inner">
		<article class="course-program__card">
			<header class="course-program__header">
				<h2 class="course-program__title">Программа курса</h2>
				<div class="course-program__stat-box">
					<p class="course-program__stat-text">
						Вас ждут онлайн-лекции и практические задания на основе ваших проектов.
					</p>
					<div class="course-program__stat-item">
						<b class="course-program__stat-number">[[*course_modules_count]]</b>
						<p class="course-program__stat-name">тематических модулей</p>
					</div>
					<div class="course-program__stat-item">
						<b class="course-program__stat-number">[[*course_lessons_count]]</b>
						<p class="course-program__stat-name">уроков</p>
					</div>
				</div>
			</header>
			<ul class="course-program__modules-box">
				[[!getImageList?
					&tvname=`course_program`
					&tpl=`@CODE: <li class="program-module">
												<header class="program-module__header">
													<p class="program-module__name">[[+course_program_title]]</p>
													<button class="program-module__add-btn js--program-module-btn" type="button">
														<svg class="program-module__add-icon" width="16" height="16">
															<use xlink:href="#icon-plus"></use>
														</svg>
													</button>
												</header>
												<section class="program-module__content js--program-module-content">
													<p class="program-module__text">[[+course_program_text]]</p>
												</section>
											</li>`
					&docid=`[[*id]]`
					&limit=`999`
				]]
			</ul>
			<p class="course-program__description">
				[[+introtext]]
			</p>
		</article>
	</div>
</section>
<section class="course-teacher">
	<div class="course-teacher__inner">
		<h2 class="course-teacher__title">Преподаватели</h2>
		<div class="authors-section__authors-box">
			{'msProducts' | snippet : [
				'parents' => '142',
				'tpl' => '@INLINE: <article class="author-card">
														<a href="[[~[[+id]]]]" class="author-card__url">
															<div class="author-card__img-box">
																<img src="assets/content-img/[[+tv.specialistFullImg]]" alt="" class="author-card__img">
															</div>
															<div class="author-card__text-box">
																<b class="author-card__name">[[+pagetitle]]</b>
																<p class="author-card__text">
																	[[+introtext]]
																</p>
															</div>
														</a>
													</article>',
				'includeTVs' => 'specialistFullImg',
				'tvPrefix' => 'tv.',
				'limit' => '999',
				'where' => '{"id:IN":['~$_modx->resource.course_specialists~']}',
			]}
		</div>  
	</div> 
</section>
{/block}
{block 'blog-scripts'}
<script>
(function(){

	if (document.querySelector('.modules-section')) {

	var fullPrice = document.querySelector('.course-big-card__price');
	var itemsAmount = document.querySelectorAll('.modules-section__module');
	var inputOptions = document.querySelector('input[name="options"]');
	var currentPrice = 0;

	function setTitlePrice() {
		var priceArr = document.querySelectorAll('.module__price');
		if (!priceArr.length) {
			return false;
		}
		priceArr = Array.from(priceArr);

		priceArr = priceArr.map(function(item){
			return +item.textContent.replace(/\s/g, '').slice(0, -1);
		});

		var minPrice = Math.min(...priceArr);
		//currentPrice = minPrice;

		document.querySelector('.course-big-card__price').textContent = 'От ' + minPrice + ' Р';
	};setTitlePrice();


	function changePrice(changeSymbol, addItem){
		//var newPrice = fullPrice.textContent.replace(/\s/g, '').slice(0, -1);
		console.log(addItem.dataset.price)
		if(changeSymbol == '-'){
			currentPrice = Number(currentPrice) - Number(addItem.dataset.price.replace(/\s/g, ''));
		} else if(changeSymbol == '+'){
			currentPrice = Number(currentPrice) + Number(addItem.dataset.price.replace(/\s/g, ''));
		}
		fullPrice.textContent = currentPrice + ' Р';
	}	

	document.querySelector('.modules-section').addEventListener('click', function(evt){
		var addItem = evt.target.closest('.module__checkbox-input');
		if(addItem !== null){
			if(addItem.dataset.add == 'true'){
				addItem.dataset.add = 'false';
				addItem.classList.remove('active');
				changePrice('-', addItem);
				updateOptions('false', addItem.parentElement.parentElement.parentElement.dataset.number);
				addItem.previousElementSibling.textContent = 'Выбрать модуль';
				
			} else if(addItem.dataset.add == 'false') {
				addItem.dataset.add = 'true';
				addItem.classList.add('active');
				changePrice('+', addItem);
				updateOptions('true', addItem.parentElement.parentElement.parentElement.dataset.number);
				evt.target.previousElementSibling.textContent = 'Перейти к оплате';
			}
		}
	});


	function addOptions(){
		window.itemOptions = [];
		for(var i = 0; i < itemsAmount.length; i++){
			window.itemOptions[i] = {
				"itemNumber": itemsAmount[i].dataset.number,
				"addItem": "false"
			}
		}
		window.itemOptions = JSON.stringify(window.itemOptions);
		inputOptions.value = window.itemOptions;
	};addOptions();

	function updateOptions(addItemVal, itemNumber){
		//console.log(itemNumber)
		itemOptions = JSON.parse(window.itemOptions);
		window.itemOptions.forEach(function(item, index) {
			if(item.itemNumber == itemNumber) {
				window.itemOptions[index].addItem = addItemVal;
			}
		});
		window.itemOptions = JSON.stringify(window.itemOptions);
		inputOptions.value = window.itemOptions;
		console.log(window.itemOptions)
	};
	
	}
})();
(function() {
	var orderBtn = document.querySelectorAll('.module__checkbox-text');

	for (var i = 0; i < orderBtn.length; i++) {
		orderBtn[i].addEventListener('click', function(evt) {
			if (evt.target.nextElementSibling.checked) {
			
				document.querySelector('.course-big-card__buy-btn').click();
					evt.target.nextElementSibling.checked = true;

				{if $_modx->isAuthenticated()} 
					setTimeout(() => {
						window.location.href = '{$_modx->makeUrl(99)}';
					}, 1000);
				{/if}
			}
		});
	}
})();










{if !$_modx->isAuthenticated()} 
(function() {
	const buyBtn = document.querySelector('#buyProductBtn');

	buyBtn.addEventListener('click', function() {
		const product = {
			id: '{$_modx->resource.id}',
			options: JSON.parse(document.querySelector('input[name="options"]').value),
		};
		document.cookie = "unknownOrder=" + JSON.stringify(product) + ';domain=.tolimantsentr.ru;path=/';
	});
})();
{/if}

</script>
{/block}