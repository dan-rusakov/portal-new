<div class="timetable-box">
	<div class="timetable-box__img" style="background-image: url({$image | replace : " " : "%20"})"></div>
	<div class="timetable-box__content">
		<p class="timetable-box__date">{$_pls['tv.dateServicePage'] | date_format: '%d %B %Y, %H:%M'}</p>
		<p class="timetable-box__title">{$pagetitle}</p>
		<p class="timetable-box__author">Автор - {$_pls['tv.specialistList']}</p>
		<a href="{$_modx->makeUrl($id)}" class="timetable-box__btn more-btn-red">Подробнее</a>
	</div>
</div>