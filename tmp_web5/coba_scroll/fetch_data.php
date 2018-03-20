<?php
sleep(1);

// configuration
include 'config.php';

$row = $_POST['row'];
$rowperpage = 3;

// selecting posts
$query = "SELECT * FROM m_publik_user_status  limit $row,$rowperpage";

$result = mysqli_query($con,$query);

$html = '';

while($row = mysqli_fetch_array($result)){
    $id = $row['kd'];
    $title = $row['status'];
    $content = $row['postdate'];
    // Creating HTML structure
    $html .= '<div id="post_'.$id.'" class="post">';
    $html .= '<h1>'.$title.'</h1>';
    $html .= '</div>';

}

echo $html;
?>
