<div class="stores-location-tab">
    <div class="stores-location-tab__header grid">
        <p class="stores-location-tab__title">{$pagetitle}, {$_pls['tv.overviewsAdress']}</p>
        <i class="icon-bold-arrow-down stores-location-tab__arrow"></i>
    </div>
    <div class="stores-location-tab__content grid">
        <p class="stores-location-tab__text">{$introtext}</p>
        <div class="owl-carousel stores-location-tab-carousel">
            {'!getImageList' | snippet : [
                'tvname' => 'overviewsGallery',
                'tpl' => '@CODE: <a href="[[+overviewsGallery__img]]" data-fancybox="gallery1"><img src="[[+overviewsGallery__img]]" alt="[[+overviewsGallery__img]]"></a>',
                'docid' => ''~$id~'',
            ]}
        </div>
    </div>
</div>