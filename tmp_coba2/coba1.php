<?php
//ambil nilai
require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");



//kd user
$xku = $x;


//bikin folder user /////////////////////////////////////////////////////////////////////////////
$dirpath = "filebox_user/$xku";
$mode = "0777";
is_dir($dirpath) || mkdir($dirpath, $mode, true);

chmod($dirpath,0777);







//bikin folder status ////////////////////////////////////////////////////////////////////////////
$nilku = "$tahun$bulan$tanggal$jam$menit$detik$x-$xku";

$dirpath = "filebox/$nilku";
$mode = "0777";
is_dir($dirpath) || mkdir($dirpath, $mode, true);


echo "$dirpath 
<hr>";

chmod($dirpath,0777);


$nilya = "$dirpath/$nilku.txt";

$myfile = fopen("$nilya", "w") or die("Unable to open file!");
$txt = "status\n";
fwrite($myfile, $txt);
fclose($myfile);

chmod($nilya,0777);






//bikin folder comment //////////////////////////////////////////////////////////////////////////
$dirpath2 = "filebox/$nilku/comment";
$mode = "0777";
is_dir($dirpath2) || mkdir($dirpath2, $mode, true);

chmod($dirpath2,0777);


//isi text sample comment
//usernya
$xku2 = $x;
$xyu = "$tahun$bulan$tanggal$jam$menit$detik$x-$xku2";
$nilku2 = $xyu;
$nilya2 = "$dirpath2/$nilku2.txt";

$myfile = fopen("$nilya2", "w") or die("Unable to open file!");
$txt = "comment.. $xyu \n";
fwrite($myfile, $txt);
fclose($myfile);

chmod($nilya2,0777);











exit();
?>