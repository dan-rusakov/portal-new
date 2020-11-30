{* {'!msProducts' | snippet : [
	'parents' => '17,18,19',
	'limit' => '999',
	'toPlaceholder' => 'materials-meetings-plc',
	'showLog' => '1',
	'optionFilters' => '{"services_radio:IN":["Живая встреча","Вебинар"]}',
	'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
	'returnIds' => '1'
]}
{'!msProducts' | snippet : [
	'parents' => '17,18,19',
	'limit' => '999',
	'toPlaceholder' => 'materials-events-plc',
	'showLog' => '1',
	'optionFilters' => '{"services_radio:>":0}',
	'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
	'returnIds' => '1'
]}
{'!msProducts' | snippet : [
	'parents' => '6',
	'limit' => '999',
	'toPlaceholder' => 'materials-education-plc',
	'showLog' => '1',
	'optionFilters' => '{"services_radio:IN":["Переподготовка для специалистов","Переподготовка для родителей"]}',
	'where' => '{"id:IN":['~$_modx->runSnippet("!getUsersOrders")~']}',
	'returnIds' => '1'
]} *}

 {* education_service     Переподготовка для специалистов   Переподготовка для родителей *}
 {* services_radio      Вебинар  Консультация онлайн  *}