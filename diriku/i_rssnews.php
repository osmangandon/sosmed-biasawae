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
	

	/*	
	echo '<table width="100%" cellpadding="3" cellspacing="3" border="1">
	<tr valign="top">
	<td width="100%" align="right">
	<h3>INFO TERBARU</h3>';
	
	

	
	//tampilkan random terbaru..
	$qku = mysql_query("SELECT * FROM rssnews ".
							"WHERE item_date = '$tanggalnya' ".
							"ORDER BY RAND() LIMIT 0,10");
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
	*/
	
	
	
	
	

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
	
	
	
	
	
	
	
	
	//scrape //////////////////////////////////////////////////////////////////////////////////
	$qkuu = mysql_query("SELECT * FROM rssnews ".
							"WHERE item_date = '$tanggalnya' ".
							"ORDER BY RAND()");
	$rkuu = mysql_fetch_assoc($qkuu);
	$kuu_url = balikin($rkuu['item_url']);
	
	
	//fetches HTML data from a URL
	function getData($url)
		{ 	
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_HEADER,0);
		curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 GTB6 (.NET CLR 3.0.4506.2152)");
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);
		curl_setopt($ch, CURLOPT_URL, $url);	
		$content = curl_exec($ch);
		curl_close($ch);
	
		return $content;
		}


	
	
	$source = getData($kuu_url);

    // DOM document Creation
    $doc = new DOMDocument;
    libxml_use_internal_errors(true);
    $doc->loadHTML($source);
    libxml_clear_errors();

    // DOM XPath Creation
    $xpath = new DOMXPath($doc);

    // Gets title
    $title = $xpath->query('//title')->item(0)->textContent;

    if(empty($title))
		$title = "";

    // Gets all Open Graph images
    $events = $xpath->query('//meta[@property="og:image"]/@content');

    $image = "";
    for($i = 0; $i < ($events->length); $i++) {
	    $event = $events->item($i);
	    $des = $xpath->evaluate('//meta[@property="og:image"]/@content', $event);
	    if ($des->length > 0) {
	        $image = $des->item(0)->value;
	        break;
	    }
	}

	if(empty($image))
		$image = "";


	// Gets all Open Graph descriptions
    $events = $xpath->query('//meta[@property="og:description"]/@content');

    $description = "";
    for($i = 0; $i < ($events->length); $i++) {
	    $event = $events->item($i);
	    $des = $xpath->evaluate('//meta[@property="og:description"]/@content', $event);
	    if ($des->length > 0) {
	        $description = $des->item(0)->value;
	        break;
	    }
	}

	if(empty($description))
		$description = "";









	//simpan ke publik
	//cek dulu..
	$qyuk = mysql_query("SELECT * FROM m_publik_user_status ".
							"WHERE urlnya = '$kuu_url'");
	$tyuk = mysql_num_rows($qyuk);
	
	//jika null
	if (empty($tyuk))
		{
		mysql_query("INSERT INTO m_publik_user_status(kd, kd_user, status, urlnya, urlnya_judul, urlnya_image, urlnya_deskripsi, postdate, filex) VALUES ".
						"('$x', '', '$title', '$kuu_url', '$title', '$image', '$description', '$today', '')");
		}

	
	
	
	
	
	exit();
	}
?>