{extends 'file:templates/layout.tpl'}

{block 'main'}
[[!msProducts]]
<section class="course-box-full" id="msProduct">
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
							<button class="course-card-full__btn" type="submit" name="ms2_action" value="cart/add">Записаться</button>
						</form>
					{else}
						<form method="post" style="display: none;">
							<input type="hidden" name="options" value="[]">
						</form>
						<a data-fancybox data-src="#login-popup" href="javascript:;" class="course-card-full__btn" id="buyProductBtn">Записаться</a>
					{/if}
                </div>
            </div>
        </div>
        <div class="course-card-about course-box-full__about sw-course-card active">
					[[!formatting_content? &content=`{$_modx->resource.content}`]]
					[[!getImageList?
							&tvname=`serviceItem`
							&tpl=`serviceItem`
							&docid=`[[*id]]`
							&limit=`999`
					]]
        </div>
        {if $_modx->resource.specialistList != '-- Выберите специалиста --'} 
					{'msProducts' | snippet : [
							'parents' => '142',
							'tpl' => 'author-card',
							'includeTVs' => 'specialistFullImg',
							'tvPrefix' => 'tv.',
							'limit' => '1',
							'where' => '{"pagetitle:=":"'~$_modx->resource.specialistList~'"}',
					]} 
        {/if} 
        <a href="{$_modx->makeUrl(16)}" class="more-btn course-box-full__btn">Прочитать больше о центре</a>
    </div>
</section>
{/block}
{block 'blog-scripts'}
<script>
(function(){

	if(document.querySelector('#consultation-order')){
		var consultationBtn = document.querySelector('#consultation-order');

		consultationBtn.addEventListener('click', function(){
			$.ajax({
				type: "POST",
				url: document.location.href,
				data: 'consultationId={$_modx->resource.id}',
				success: function(data){
					//alert("запись на конс выполнена");
					/*if(data.success){
						miniShop2.Message.success(data.message);
						if(data.data.msorder){
							window.location.href = "[[~13]]?msorder="+data.data.msorder;
						}
					} else{
						miniShop2.Message.error(data.message);
					}*/
				}
			})
			
		});
	}
	
})();

(function(){

	if(document.querySelector('.course-card-about')){

	var fullPrice = document.querySelector('.course-card-full__price');
	var itemsAmount = document.querySelectorAll('.course-item');
	var inputOptions = document.querySelector('input[name="options"]');
	var currentPrice = 0;

	function setTitlePrice() {
		var priceArr = document.querySelectorAll('.course-item__price');
		if (!priceArr.length) {
			return false;
		}
		priceArr = Array.from(priceArr);

		priceArr = priceArr.map(function(item){
			return +item.textContent.replace(/\s/g, '').slice(0, -1);
		});

		var minPrice = Math.min(...priceArr);
		//currentPrice = minPrice;

		document.querySelector('.course-card-full__price').textContent = 'От ' + minPrice + ' Р';
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

	document.querySelector('.course-card-about').addEventListener('click', function(evt){
		var addItem = evt.target.closest('.course-item__input');
		if(addItem !== null){
			if(addItem.dataset.add == 'true'){
				addItem.dataset.add = 'false';
				addItem.classList.remove('active');
				changePrice('-', addItem);
				updateOptions('false', addItem.parentElement.dataset.number);
				addItem.previousElementSibling.querySelector('.course-item__url').style.display = 'none';
				
			} else if(addItem.dataset.add == 'false') {
				addItem.dataset.add = 'true';
				addItem.classList.add('active');
				changePrice('+', addItem);
				updateOptions('true', addItem.parentElement.dataset.number);
				evt.target.previousElementSibling.querySelector('.course-item__url').style.display = 'block';
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
	};
	
	}
})();
(function() {
	var orderBtn = document.querySelectorAll('.course-item__url');

	for (var i = 0; i < orderBtn.length; i++) {
		orderBtn[i].addEventListener('click', function() {
			document.querySelector('.course-card-full__btn').click();

			{if $_modx->isAuthenticated()} 
				setTimeout(() => {
					window.location.href = '{$_modx->makeUrl(99)}';
				}, 1000);
			{/if}
		});
	}
})();
(function() {
	var orderCheckbox = document.querySelectorAll('.course-item__input');
console.log(orderCheckbox);
	for (var i = 0; i < orderCheckbox.length; i++) {
		orderCheckbox[i].addEventListener('change', function(evt) {
			console.log(!!evt.target.dataset.add);
			//evt.target.dataset.add = evt.target.dataset.add === 'false' ? 'true' : 'false';
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