<?php
sleep(1);
ini_set('max_execution_time', 0);
error_reporting(0);


//ambil nilai
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");

	


nocache;

//nilai
$filenya = "rss.php";
$judul = "RSS BIASAWAE-MOCO-Berita";
$s = nosql($_REQUEST['s']);
$kd = nosql($_REQUEST['kdku']);
$keywords = "biasawae, moco, berita";




//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
header("Content-Type: application/xml; charset=ISO-8859-1");

echo '<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
<title>BIASAWAE-MOCO-Berita</title>
<atom:link href="'.$sumber.'/rss.php" rel="self" type="application/rss+xml" />
<link>'.$sumber.'</link>
<description>BIASAWAE-MOCO-Berita</description>
<language>id-ID</language>
<generator>RSS FEED BIASAWAE-MOCO-Berita</generator>';

//query
$qku = mysql_query("SELECT * FROM rssnews ".
						"ORDER BY fetch_date DESC LIMIT 0 , 100");
$rku = mysql_fetch_assoc($qku);

do
	{
	$i_kd = nosql($rku['item_id']);
	$i_judul = balikin($rku['item_title']);
	$i_isi = balikin($rku['item_content']);
	$i_postdate = $rku['fetch_date'];

	echo "<item>
	<title>$i_judul</title>
	<link>$sumber/redirect.php?kd=$i_kd</link>
	<guid>$sumber/redirect.php?id=$i_kd</guid>
	<description>[$i_postdate]. $i_judul</description>
	<pubDate>$i_postdate</pubDate>
	</item>";
	}
while ($rku = mysql_fetch_assoc($qku));


echo "</channel></rss>";



exit();
?>
