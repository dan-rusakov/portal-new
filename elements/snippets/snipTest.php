<?php
$tvid = 1; // id нужного ТВ параметра
$res = array(); // Сюда забиваем результаты

$q = $modx->newQuery('modTemplateVarResource', array('tmplvarid' => $tvid));
$q->select('contentid,value');
if ($q->prepare() && $q->stmt->execute()) {
	while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {
		$res[$row['contentid']] = $row['value'];
	}
}
print_r($res);