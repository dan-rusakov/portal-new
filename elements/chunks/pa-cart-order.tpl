<form class="ms2_form" id="msOrder" method="post">

	{foreach ['email','receiver','phone'] as $field}
		<input type="hidden" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
						name="{$field}" value="{$form[$field]}"
						class="form-control{($field in list $errors) ? ' error' : ''}">
	{/foreach}

	<input type="hidden" name="payment" value="3" id="payment_3" checked class="js--sber-payment">
	<input type="hidden" name="payment" value="1" id="payment_3" class="js--no-payment">

	{foreach $deliveries as $delivery index=$index}
		{var $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}
		<input type="hidden" name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
						data-payments="{$delivery.payments | json_encode}"
						{$checked ? 'checked' : ''}>
	{/foreach}

	<div class="profile-cart__promo-code-box">
		<input type="text" name="promocode" class="profile-cart__promo-code-input pa-content-box__promocode-input main-form__input email-delivery__input" placeholder="Промокод" id="promocode-input">
		<button class="profile-cart__promo-code-btn main-btn pa-content-box__btn ms2_link" type="button" id="submit-promocode-btn">Применить</button>
	</div>
	<div class="profile-cart__submit-box">
		<p class="profile-cart__total-price" id="order-price">Сумма заказа: <span id="ms2_order_cost">{$order.cost ?: 0}</span>{'ms2_frontend_currency' | lexicon}</p>
		<button class="profile-cart__confirm-btn ms2_link js--no-payment-btn" type="submit" name="ms2_action" value="order/submit">Подтвердить</button>
		<button class="profile-cart__buy-btn ms2_link js--sber-payment-btn" type="submit" name="ms2_action" value="order/submit">Оплатить сейчас</button>
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
// смена типа оплаты
(function() {
	const sberPayment = document.querySelector('.js--sber-payment');
	const sberPaymentBtn = document.querySelector('.js--sber-payment-btn');
	const noPayment = document.querySelector('.js--no-payment');
	const noPaymentBtn = document.querySelector('.js--no-payment-btn');

	sberPaymentBtn.addEventListener('click', () => {
		sberPayment.checked = true;
		noPayment.checked = false;
	});

	noPaymentBtn.addEventListener('click', () => {
		sberPayment.checked = false;
		noPayment.checked = true;
	});
	
})();
</script>