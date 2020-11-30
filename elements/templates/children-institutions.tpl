{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Обзоры детских магазинов', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
<section class="stores-location">
    <div class="container">
        <div class="stores-location-header grid stores-location__header">
            <div class="stores-location-header__map">
                <div id="map" style="width: 100%; height: 100%"></div>
            </div>
            <div class="stores-location-header__content">
                <ul class="stores-location-header__list">
                    <li class="stores-location-header__listText active" id="theaters">театры</li>
                    <li class="stores-location-header__listText" id="museums">музеи</li>
                    <li class="stores-location-header__listText" id="restorants">рестораны и кафе</li>
                    <li class="stores-location-header__listText" id="swimmingPools">бассейны</li>
                    <li class="stores-location-header__listText" id="library">библиотеки</li>
                    <li class="stores-location-header__listText" id="chlCelebration">организация детских праздников</li>
                </ul>
                <p class="stores-location-header__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
        <div class="stores-location-tab-category active">
            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Театры%"}'
            ]}
        </div>
        <div class="stores-location-tab-category">

            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Музеи%"}'
            ]}

        </div>
        <div class="stores-location-tab-category">

            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Рестораны и кафе%"}'
            ]}

        </div>
        <div class="stores-location-tab-category">

            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Бассейны%"}'
            ]}

        </div>
				<div class="stores-location-tab-category">

            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Библиотеки%"}'
            ]}

        </div>
				<div class="stores-location-tab-category">

            {'!pdoResources' | snippet : [
                'parents' => $_modx->resource.id,
                'tpl' => 'stores-location-tab',
                'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
                'tvPrefix' => 'tv.',
                'where' => '{"childrenInstitutionsCategory:LIKE":"%Организация детских праздников%"}'
            ]}

        </div>
    </div>
</section>
{/block}

{block 'blog-scripts'}
<script>
$(document).ready(function(){

    var theaters = [
			{'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Театры%"}'
			]}
      ""
    ];

    var museums = [
      {'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Музеи%"}'
			]}
      ""
    ];

    var restorants = [
			{'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Рестораны и кафе%"}'
			]}
      ""
    ];

    var swimmingPools = [
			{'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Бассейны%"}'
			]}
      ""
    ];

		var library = [
			{'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Библиотеки%"}'
			]}
      ""
    ];

		var chlCelebration = [
			{'!pdoResources' | snippet : [
					'parents' => $_modx->resource.id,
					'tpl' => '@INLINE: "Екатеринбург, [[+tv.overviewsAdress]]",',
					'includeTVs' => 'overviewsAdress, childrenInstitutionsCategory',
					'tvPrefix' => 'tv.',
					'where' => '{"childrenInstitutionsCategory:LIKE":"%Организация детских праздников%"}'
			]}
      ""
    ];

    renderMap(theaters);

    function renderMap(coords){
        ymaps.ready(init);
        function init(){  

            var myMap = new ymaps.Map("map", {
                center: [56.83657367916054,60.60310486299494],
                zoom: 12
            });

            var myCollection = new ymaps.GeoObjectCollection({}, {
                preset: 'islands#redIcon' //все метки красные
            });

            for(var i = 0; i < coords.length; i++){

                // Ищем координаты указанного адреса
                var geocoder = ymaps.geocode(coords[i]);
            
                // После того, как поиск вернул результат, вызывается callback-функция
                geocoder.then(
                    function (res) {
                        // координаты объекта
                        var coordinates = res.geoObjects.get(0).geometry.getCoordinates();
                        myCollection.add(new ymaps.Placemark(coordinates));
                    }
                );

            };
            
            myMap.geoObjects.add(myCollection);

        }
    };
    

    $('.stores-location-header__listText').on('click', function(){
        $('#map').empty();
        var storesLocationId = $(this).attr('id');
        renderMap(eval(storesLocationId));
    });

    
});
</script>
{/block}