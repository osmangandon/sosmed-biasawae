<?php 
//iklan random

$targetnya = "http://analisatoko.com/ifr_iklan.php";


$curl = curl_init();
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($curl, CURLOPT_HEADER, false);
curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($curl, CURLOPT_URL, $targetnya);
curl_setopt($curl, CURLOPT_REFERER, $targetnya);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
$str = curl_exec($curl);
curl_close($curl);


$nilku = $str;

//$nilku = file_get_contents($targetnya);

echo $nilku;
?>
