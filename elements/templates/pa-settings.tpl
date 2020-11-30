
{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<h1 class="pa-section-title">Настройки</h1>
<div class="pa-content-box">
	<h3 class="pa-content-box__text">Здесь Вы можете менять настройки Личного кабинета. Если у Вас возникли проблемы, пожалуйтса, свяжитесь с нами: toliman1@mail.ru</h3>

	[[!officeProfile? &tplProfile=`pa-settings-form`]]
			
</div>  
{/block}