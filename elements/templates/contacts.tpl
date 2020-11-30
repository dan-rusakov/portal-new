{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="contacts">
    <div class="grid">
        <div class="contacts__map">
            <div id="contactMap" style="width: 100%; height: 100%"></div>
        </div>
        <div class="contacts__content">
            <h2 class="contacts__title">Контакты</h2>
            <ul class="contacts__list">
                <li class="contacts__list-item grid"><i class="icon-form-email contacts__icon"></i><p class="contacts__list-text">{$_modx->resource.contactEmail}</p></li>
                <li class="contacts__list-item grid"><i class="icon-form-phone contacts__icon"></i><p class="contacts__list-text">{$_modx->resource.contactPhone}</p></li>
                <li class="contacts__list-item grid"><i class="icon-location-linear contacts__icon"></i><p class="contacts__list-text">{$_modx->resource.contactAdress}</p></li>
            </ul>
            <p class="contacts__text">{$_modx->resource.contactAttr}</p>
            <div class="contacts__social-box">
                <a href="{$_modx->resource.contactInst}" class="contacts__social-url"><img src="assets/img/instagram-blue-icon.png" alt="instagram" class="contacts__social-img"></a>
                <a href="{$_modx->resource.contactVk}" class="contacts__social-url"><img src="assets/img/vk-blue-icon.png" alt="vk" class="contacts__social-img"></a>
                <a href="{$_modx->resource.contactYoutube}" class="contacts__social-url"><img src="assets/img/youtube-blue-icon.png" alt="youtube" class="contacts__social-img"></a>
            </div>
        </div>
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