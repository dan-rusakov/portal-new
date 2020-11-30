<section class="course-teacher">
	<div class="course-teacher__inner">
		<h2 class="course-teacher__title">Преподаватель</h2>
		<a href="{$_modx->makeUrl($id)}" class="teacher-card-mini">
			<div class="teacher-card-mini__img-box">
				<img src="assets/content-img/[[+tv.specialistFullImg]]" alt="" class="teacher-card-mini__img">
			</div>
			<div class="teacher-card-mini__text-box">
				<strong class="teacher-card-mini__name">{if $_modx->resource.specialistList}{$_modx->resource.specialistList}{else}{$pagetitle}{/if}</strong>
				<p class="teacher-card-mini__profession">{$specialist_type.0}</p>
				<p class="teacher-card-mini__description">
					[[+introtext]]
				</p>
			</div>
		</a>
	</div> 
</section> 