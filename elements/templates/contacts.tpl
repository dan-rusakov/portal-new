{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="contacts">
	<div class="contacts__inner">
		<article class="contacts__card">
			<div class="contacts__map">
				<div id="contactMap" style="width: 100%; height: 100%"></div>
			</div>
			<div class="contacts__content-box">
				<h1 class="contacts__title">Контакты</h1>
				<ul class="contacts__contacts-list">
					<li class="contacts__contacts-item">
						<svg class="contacts__contacts-icon" width="24" height="24">
							<use xlink:href="#icon-email"></use>
						</svg>
						<p class="contacts__contacts-text">{$_modx->resource.contactEmail}</p>
					</li>
					<li class="contacts__contacts-item">
						<svg class="contacts__contacts-icon" width="24" height="24">
							<use xlink:href="#icon-phone"></use>
						</svg>
						<p class="contacts__contacts-text">{$_modx->resource.contactPhone}</p>
					</li>
					<li class="contacts__contacts-item">
						<svg class="contacts__contacts-icon" width="24" height="24">
							<use xlink:href="#icon-location"></use>
						</svg>
						<p class="contacts__contacts-text">{$_modx->resource.contactAdress}</p>
					</li>
				</ul>
				<p class="contacts__text">{$_modx->resource.contactAttr}</p>
				<div class="contacts__soc-box">
					<a href="{$_modx->resource.contactInst}" class="contacts__soc-box-url" aria-label="Ссылка на instagram">
						<svg class="contacts__soc-box-icon" width="40" height="40">
							<use xlink:href="#icon-instagram"></use>
						</svg>
					</a>
					<a href="{$_modx->resource.contactVk}" class="contacts__soc-box-url" aria-label="Ссылка на vk">
						<svg class="contacts__soc-box-icon" width="40" height="40">
							<use xlink:href="#icon-vk"></use>
						</svg>
					</a>
					<a href="{$_modx->resource.contactYoutube}" class="contacts__soc-box-url" aria-label="Ссылка на YouTube">
						<svg class="contacts__soc-box-icon" width="40" height="40">
							<use xlink:href="#icon-youtube"></use>
						</svg>
					</a>
				</div>
			</div>
		</article>
	</div>
</section>
{/block}

{block 'blog-scripts'}
<script type="text/javascript">

		ymaps.ready(init);
		
		function init(){ 
		
		var myMap = new ymaps.Map('contactMap', {
				center: [56.82760954365292,60.60242324379001],
				zoom: 13
		});
		
		//var newAdress = '{$_modx->resource.contactAdress}';
		//newAdress = newAdress.split(',');

		ymaps.geocode('{$_modx->resource.contactAdress}', {
		
				results: 1
				
		}).then(function (res) {

				var firstGeoObject = res.geoObjects.get(0),
				coords = firstGeoObject.geometry.getCoordinates(),
				bounds = firstGeoObject.properties.get('boundedBy');
				bounds[0][1] = bounds[0][1] + 0.002;
				bounds[1][1] = bounds[1][1] + 0.002;
				firstGeoObject.options.set('preset', 'islands#darkBlueDotIconWithCaption');
				firstGeoObject.properties.set('iconCaption', firstGeoObject.properties.get('name'));
				myMap.geoObjects.add(firstGeoObject);
				
				// Масштабируем карту на область видимости геообъекта.
				myMap.setBounds(bounds, {
						checkZoomRange: true
				});
				
				console.log(firstGeoObject.properties.get('boundedBy')[0][0] + 0.012);
				firstGeoObject.options.set('boundedBy[0][0]', '56.932809');

		});
				
		}
		
</script>

{/block}