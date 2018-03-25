<?
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");

	


$filenyax = "i_rssnews.php";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika daftar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftar'))
	{
	//tanggal hari ini
	$tanggalnya = "$tahun-$bulan-$tanggal";
	
	
	echo '<table width="100%" cellpadding="3" cellspacing="3" border="1">
	<tr valign="top">
	<td width="100%" align="right">
	<h3>INFO TERBARU</h3>';
	
	

	
	//tampilkan random terbaru..
	$qku = mysql_query("SELECT * FROM rssnews ".
							"WHERE item_date = '$tanggalnya' ".
							"ORDER BY RAND() LIMIT 0,50");
	$rku = mysql_fetch_assoc($qku);
	
	do
		{
		$ku_judul = balikin($rku['item_title']);
		$ku_url = balikin($rku['item_url']);
		$ku_postdate = balikin($rku['item_date']);
		
		
		echo "<h6><a href=\"$ku_url\" target=\"_blank\">$ku_judul</h6>
		<br>";
		}
	while ($rku = mysql_fetch_assoc($qku));
	
	
	echo '</td>
	</tr>
	</table>';
	
	
	
	
	
	

	//ambil secara random, dari daftar rss ////////////////////////////////////////////////////////////////////
	$qku = mysql_query("SELECT * FROM rss ".
							"ORDER BY RAND()");
	$rku = mysql_fetch_assoc($qku);
	$ku_link = $rku['link_url'];
	$ku_kategori = $rku['kategori'];
	
	$feed_url = $ku_link;

	
	
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

		//cek
		$qcc = mysql_query("SELECT item_id FROM rssnews ".
								"where item_title = '$title'");
		$tcc = mysql_num_rows($qcc);
		
		if (empty($tcc))
			{

			mysql_query("INSERT INTO rssnews(item_id, feed_url, item_title, item_date, item_url, fetch_date, kategori) VALUES ".
							"('$x', '$feed_url', '$title', '$pubDate', '$link', '$pubDate', '$ku_kategori')");
			}
	    $i++;
	
		}
	
	
	exit();
	}
?>