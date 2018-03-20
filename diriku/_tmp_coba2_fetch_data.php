<?php
sleep(1);


require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");


$row = $_POST['row'];
$rowperpage = 3;

// selecting posts
$query = mysql_query("SELECT * FROM m_publik_user_status ".
						"ORDER BY postdate DESC limit $row,$rowperpage");
$row = mysql_fetch_assoc($query);

$html = '';


do
	{
    $id = $row['kd'];
    $title = $row['status'];
    $content = $row['postdate'];
    // Creating HTML structure
    $html .= '<div id="post_'.$id.'" class="post">';
    $html .= '<h1>'.$title.'</h1>'.$content.'';
    $html .= '</div>';
	}
while ($row = mysql_fetch_assoc($query));



echo $html;


//exit();
?>
