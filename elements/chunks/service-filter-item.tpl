<li class="courses-page__aside-menu-item">
	<input
		type="checkbox"
		name="[[+filter_key]]"
		id="mse2_[[+table]][[+delimeter]][[+filter]]_[[+idx]]"
		value="[[+value]]"
		class="courses-page__aside-menu-checkbox"
		[[+checked]]
		[[+disabled]]
		style="display: none;"
	/>
	<label for="mse2_[[+table]][[+delimeter]][[+filter]]_[[+idx]]" class="[[+disabled]] courses-page__aside-menu-url" style="display: block">
		[[+title:strtotime:date=`%B`:default=`[[+title]]`]]
		<span class="courses-page__aside-menu-bg" style="background-color: #2D8984"></span>
	</label>
</li>