<div class="container grid msearch2" id="mse2_mfilter">
	<form action="[[~[[*id]]]]" class="services__content-left" method="post" id="mse2_filters">
		[[+filters]]
	</form>
	<div class="services__content-right">
		<div class="rows grid" id="mse2_results">
			[[+results]]
		</div>
		<div class="mse2_pagination grid">
			[[!+page.nav]]
		</div>
	</div>
</div>