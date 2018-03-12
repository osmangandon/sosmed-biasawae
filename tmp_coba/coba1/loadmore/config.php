<?php
//Database Configuration
$hostname = "localhost";
$user = "biasawae";
$password = "biasawae";
$database = "biasawae_social_media";
$prefix = "";
//Loadmore configuarion
$resultsPerPage=5;
$bd = mysql_connect($hostname, $user, $password) or die("Failed to connect to database");
mysql_select_db($database, $bd) or die("Database Not Found");
?>
