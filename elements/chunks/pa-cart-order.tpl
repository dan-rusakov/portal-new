<form class="ms2_form" id="msOrder" method="post">

	{foreach ['email','receiver','phone'] as $field}
		<input type="hidden" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
						name="{$field}" value="{$form[$field]}"
						class="form-control{($field in list $errors) ? ' error' : ''}">
	{/foreach}

	{foreach $payments as $payment index=$index}
		{var $checked = !($order.payment in keys $payments) && $index == 0 || $payment.id == $order.payment}
		<input type="hidden" name="payment" value="3" id="payment_3"{$checked ? 'checked' : ''}>
	{/foreach}

	{foreach $deliveries as $delivery index=$index}
		{var $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}
		<input type="hidden" name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
						data-payments="{$delivery.payments | json_encode}"
						{$checked ? 'checked' : ''}>
	{/foreach}

	<div class="pa-content-box__footer pa-content-box__footer--mb grid">
    <input type="text" name="promocode" placeholder="Промокод" class="pa-content-box__promocode-input main-form__input email-delivery__input" id="promocode-input">
    <button type="button" class="main-btn pa-content-box__btn ms2_link" id="submit-promocode-btn">Применить</button>
  </div>
	<div class="pa-content-box__footer grid">
    <p class="pa-content-box__footer-price" id="order-price">Сумма заказа: <span id="ms2_order_cost">{$order.cost ?: 0}</span>{'ms2_frontend_currency' | lexicon}</p>
    <button type="submit" name="ms2_action" value="order/submit" class="main-btn pa-content-box__btn ms2_link">Оплатить</button>
  </div>

</form>

<script>
(function() {
	const submitBtn = document.querySelector('#submit-promocode-btn');
	const promocodeInput = document.querySelector('#promocode-input');
	const orderPrice = document.querySelector('#order-price');

	submitBtn.addEventListener('click', () => {
		const promocode = promocodeInput.value || null;
		$.ajax({
				type: "POST",
				url: document.location.href,
				data: 'action=get_promo&promocode=' + promocode,
				success: function(response){
					const data = JSON.parse(response);					
					
					if (data.error) {
						alert(data.error);
					} else if (data.success) {
						const newPrice = Number(data.new_price).toLocaleString();
						orderPrice.textContent = 'Сумма заказа: ' + newPrice + 'руб.';
					} else {
						alert('Ошибка сервера, попробуйте повторить через некоторое время');
					}
				}
			})
	});
})();
</script>