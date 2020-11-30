<div class="container grid msearch2" id="mse2_mfilter"> 
	<form action="{$id | url}" method="post" class="specialist__content-left" id="mse2_filters">
		<div class="authors__tabs grid" id="mse2_[[+table]][[+delimeter]][[+filter]]">
			<input type="reset" class="authors__tab" value="Все">
			{$filters}
		</div>
	</form>
	<div class="specialist__content-right">
		<div class="row grid authors-box" id="mse2_results">
			{$results}
		</div>
		<div class="mse2_pagination grid">
			{'page.nav' | placeholder}
		</div>
	</div>
</div>