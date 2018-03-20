<?php

$host = "localhost"; /* Host name */
$user = "biasawae"; /* User */
$password = "biasawae"; /* Password */
$dbname = "biasawae_social_media"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);

// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}
