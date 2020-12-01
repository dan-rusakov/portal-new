{extends 'file:templates/pa-layout.tpl'}

{block 'main'}
[[!promocode_handler]]
[[!msCart?tpl=`pa-cart-card`]]
[[!msOrder? &tpl=`pa-cart-order`]]
[[!msGetOrder? &tpl=`pa-get-order`]]
{/block}