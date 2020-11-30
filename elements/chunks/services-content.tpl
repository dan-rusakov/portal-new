<div class="courses-page__inner msearch2" id="mse2_mfilter">
	<h1 class="courses-page__title">Курсы</h1>
	<div class="courses-page__content">
		<aside class="courses-page__aside">
			<p class="courses-page__aside-menu-title">Наши направления:</p>
			<form action="[[~[[*id]]]]" method="post" id="mse2_filters">
				[[+filters]]
			</form>
		</aside>
		<div>
			<div class="courses-page__courses-box" id="mse2_results">
				[[+results]]
			</div>
			<div class="mse2_pagination grid">
				[[!+page.nav]]
			</div>
		</div>
	</div>
</div>