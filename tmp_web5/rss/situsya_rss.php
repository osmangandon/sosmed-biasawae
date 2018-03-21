<?php
ini_set('max_execution_time', 0);
error_reporting(0);


//ambil nilai
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");



$filenya = "situsya_rss.php";



$jml_detik = 5000;


//ambil secara random, dari daftar rss ////////////////////////////////////////////////////////////////////
$qku = mysql_query("SELECT * FROM rss ".
						"ORDER BY RAND()");
$rku = mysql_fetch_assoc($qku);
$ku_link = $rku['link_url'];
$ku_kategori = $rku['kategori'];

$feed_url = $ku_link;



echo '<h3>
AMBIL RSS FEED. 
</h3>

Sumber : '.$ku_link.' 
<hr>
Refreh tiap <b>'.$jml_detik.' Detik</b>.
<hr>';



$curl = curl_init();
curl_setopt_array($curl, Array(
	CURLOPT_URL            => $feed_url,
	CURLOPT_USERAGENT      => 'spider',
	CURLOPT_TIMEOUT        => 120,
	CURLOPT_CONNECTTIMEOUT => 30,
	CURLOPT_RETURNTRANSFER => TRUE,
	CURLOPT_ENCODING       => 'UTF-8'
));
$data = curl_exec($curl);
curl_close($curl);
//$xml = simplexml_load_string($data, 'SimpleXMLElement', LIBXML_NOCDATA);



//echo $data;





$feeds = simplexml_load_file($feed_url);


$i=0;


$site = $feeds->channel->title;
$sitelink = $feeds->channel->link;


foreach ($feeds->channel->item as $item) {
   $title = $item->title;
   $link = $item->link;
   $description = $item->description;
   $postDate = $item->pubDate;
   $pubDate = date('Y:m:d',strtotime($postDate));

?>
   <div class="post">
     <div class="post-head">
       <span><?php echo $pubDate; ?></span>
       <h2><a class="feed_title" href="<?php echo $link; ?>"><?php echo $title; ?></a></h2>
       
     </div>

   </div>

	<?php
	//cek
	$qcc = mysql_query("SELECT item_id FROM rssnews ".
							"where item_title = '$title'");
	$tcc = mysql_num_rows($qcc);
	
	if (empty($tcc))
		{
		echo "<font color=green>MASUK DATABASE..</font><br/>";
		
		mysql_query("INSERT INTO rssnews(item_id, feed_url, item_title, item_date, item_url, fetch_date, kategori) VALUES ".
						"('$x', '$feed_url', '$title', '$pubDate', '$link', '$pubDate', '$ku_kategori')");
		}
    $i++;

	}
?>
</div>



<?php

/*
foreach ($xml->channel->item as $item) {
	$i_no = $i_no + 1;
	$creator = $item->children('dc', TRUE);
	$i_judul = $item->title;
	$i_postdate = $today;
	$i_link = $item->link;


	$i_isiku = $item->description;
	
	$i_kd = md5("$i_judul$i_postdate$i_no");
	
	
	
	preg_match('/(<img[^>]+>)/i', $i_isiku, $i_gambare); 
	
	
	$i_gambarku = $i_gambare[0];
	
	
	
	$x_string = $i_gambarku;
	preg_match('/<img(.*)src(.*)=(.*)"(.*)"/U', $x_string, $x_result);
	$x_foo = array_pop($x_result);

	
	
	
	
	$i_isi = $i_isiku;
	

	
	
	//judulnya
	$x_judul = seo_friendly_url($i_judul);
	
	
	
	echo "$i_judul : [$i_link]";
	
	
	//cek
	$qcc = mysql_query("SELECT item_id FROM rssnews ".
							"where item_title = '$i_judul'");
	$tcc = mysql_num_rows($qcc);
	
	if (empty($tcc))
		{
		echo "<font color=green>MASUK DATABASE..</font><br/>";
		
		mysql_query("INSERT INTO rssnews(prety_url, item_id, thumbnail, feed_url, item_title, item_content, item_date, item_url, fetch_date, kategori, img_url) VALUES ".
						"('$x_judul', '$i_kd', '$i_gambarku', '$feed_url', '$i_judul', '$i_isi', '$i_postdate', '$i_link', '$i_postdate', '$ku_kategori', '$x_foo')");
		}
	else
		{
		echo "<font color=blue>SUDAH ADA..</font><br/>";
		
		//update
		mysql_query("UPDATE rssnews SET prety_url = '$x_judul', ".
						"img_url = '$x_foo', ".
						"thumbnail = '$i_gambarku', ".
						"kategori = '$ku_kategori' ".
						"WHERE item_id = '$i_kd'");
		}
		
	}

*/



?>
<script>setTimeout("location.href='<?php echo $filenya;?>'", <?php echo $jml_detik;?>);</script>

<?php
exit();
?>