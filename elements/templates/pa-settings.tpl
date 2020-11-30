
{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
<div class="profile-materials">
		<h1 class="profile-materials__title">Настройки</h1>
		<p class="profile-settings__callback-text">Здесь Вы можете менять настройки Личного кабинета. Если у Вас возникли проблемы, пожалуйтса, свяжитесь с нами: toliman1@mail.ru</p>
		[[!officeProfile? &tplProfile=`pa-settings-form`]]
</div>
{/block}