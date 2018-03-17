<?php
/* get all users list in json for autocomplete */
include '../config/config.php';

$users = $DB->query("select * from m_publik_user");
$user_data = array();
foreach($users as $key => $val)
{
	$user_data[$key]['id'] = $val['usernamex'];
	$user_data[$key]['name'] = $val['usernamex'];
	$user_data[$key]['avatar'] = "https://cdn.w3lessons.info/logo.png";
	$user_data[$key]['type'] = 'user';
}

header('Content-Type: application/json');
echo json_encode($user_data);
?>
