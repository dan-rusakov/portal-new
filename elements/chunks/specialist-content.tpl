<section class="authors-section msearch2" id="mse2_mfilter">
	<div class="authors-section__inner">
		<h2 class="authors-section__title">Специализации и авторы</h2>
	</div>
	<form action="{$id | url}" method="post" id="mse2_filters">
		<div class="categories__inner">
			<h3 class="categories__title">Наши направления:</h3>
			<ul class="categories__list" id="mse2_[[+table]][[+delimeter]][[+filter]]">	
				<li class="categories__item">
					<input type="reset" class="categories__url" value="Все" style="display: block; border-color: #5F5BAB;">
				</li>
				{$filters}
			</ul>
		</div>
	</form>
	<div class="authors-section__inner">
		<div class="authors-section__authors-box" id="mse2_results">
			{$results}
			<div class="mse2_pagination grid">
				{'page.nav' | placeholder}
			</div>
		</div>
	</div>
</section>
