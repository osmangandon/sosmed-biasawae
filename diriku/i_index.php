<?
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
require("../inc/class/simple_html_dom.php");
	


$filenyax = "i_index.php";
?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){


	$("#btnKRM").on('click', function(){
		$('#loadingku').show();

		$("#formx2").submit(function(){
			$.ajax({
				url: "<?php echo $filenyax;?>?aksi=simpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#itulisresult").html(data);
					setTimeout('$("#loadingku").hide()',5000);
					
					$("#idaftar").load("<?php echo $filenyax;?>?aksi=daftar");
					document.formx2.e_statusku.value='';
					}
				});
			return false;
		});
	
	
	});	






});

</script>




<?php



//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika simpan
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'simpan'))
	{
	//ambil nilai
	$estatusku = cegah($_GET['e_statusku']);
	$estatusku1 = $_SESSION['estatusku'];
	$statuskd = $x;
	
	$statuskd2 = "$statuskd-$tahun$bulan$tanggal$jam$menit$detik";
			
	

	//folder status
	$f_userkdx2 = "$username6_session-$kd6_session";
	$f_userkd_statusbaru = trim("../filebox/userkd/$f_userkdx2/status");	
	chmod($f_userkd_statusbaru,0777);
	



	//entri text 
	$nilya2 = "$f_userkd_statusbaru/$statuskd2.txt";
	
	$myfile = fopen("$nilya2", "w") or die("Unable to open file!");
	$txt = $estatusku;
	fwrite($myfile, $txt);
	fclose($myfile);
	
	chmod($nilya2,0777);




	
	//detek alamat web
	$estatuskuu = balikin($estatusku);
	
	$pecahku = explode("http", $estatuskuu);
	$pecah1 = $pecahku[0];
	$pecah2 = $pecahku[1];

	$nilkuya = "http$pecah1$pecah2";
	
		
	//selesaikan satu baris, sebelum ada spasi lagi...
	$pecahku = explode(" ", $nilkuya);
	$pecah1 = $pecahku[0];
	$link = $pecah1;
	
	//jika null
	if ($nilkuya == "http")
		{
		$link = "";
		}
	
	echo "-> $pecah1
	<hr>";

	
	
	

	
	
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


	
	
	$source = getData($link);

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









	//gak empty
	if (!empty($estatusku))
		{
		//cek
		if ($estatusku1 != $estatusku)
			{
			//simpan ke publik
			mysql_query("INSERT INTO m_publik_user_status(kd, kd_user, status, urlnya, urlnya_judul, urlnya_image, urlnya_deskripsi, postdate, filex) VALUES ".
							"('$statuskd', '$kd6_session', '$estatusku', '$link', '$title', '$image', '$description', '$today', '$efilex')");

			//simpan ke diri
			$tablenya = "user_status$kd6_session";
			mysql_query("INSERT INTO $tablenya(kd, status, urlnya, urlnya_judul, urlnya_image, urlnya_deskripsi, postdate, filex) VALUES ".
							"('$statuskd', '$estatusku', '$link', '$title', '$image', '$description', '$today', '$efilex')");

				
			$_SESSION['estatusku'] = $estatusku;
			}
		}	

	
	




	echo '<table border="1">
	<tr valign="top">
	<td>
	
	<table border="0">
	<tr valign="top">
	<td width="100">
	<img src="'.$image.'" alt="'.$title.'" width="100" height="100">
	</td>
	
	<td>
	<h3>'.$title.'</h3>
	<p><i>'.$description.'</i></p>
	</td>
	</tr>
	</table>
	
	</td>
	</tr>
	</table>';
	
		
	$doc->clear(); 
	unset($doc);
	
		
		
	exit();
	}









//jika simpan komentar...
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'simpan2'))
	{
	//ambil nilai
	$ekdnya = cegah($_GET['kdnya']);
	$enil1 = "e_kom$ekdnya";
	$enilnya = cegah($_GET[$enil1]);

	$komentarku = $_SESSION['komentarku'];

	$komenkd = $x;
	
	$statuskd2 = "$ekdnya-komentar-$tahun$bulan$tanggal$jam$menit$detik-$kd6_session";


	//folder status
	$f_userkdx2 = "$username6_session-$kd6_session";
	$f_userkd_statusbaru = trim("../filebox/userkd/$f_userkdx2/status");	
	chmod($f_userkd_statusbaru,0777);
	



	//entri text 
	$nilya2 = "$f_userkd_statusbaru/$statuskd2.txt";
	
	$myfile = fopen("$nilya2", "w") or die("Unable to open file!");
	$txt = $komentarku;
	fwrite($myfile, $txt);
	fclose($myfile);
	
	chmod($nilya2,0777);

	
	
		
	//gak empty
	if (!empty($enilnya))
		{
		//cek
		if ($komentarku != $enilnya)
			{
			//simpan ke database
			mysql_query("INSERT INTO m_publik_user_status_msg(kd, kd_user_status, dari, msg, postdate) VALUES ".
							"('$komenkd', '$ekdnya', '$kd6_session', '$enilnya', '$today')");


			//simpan ke diri
			$tablenya = "user_status_msg$kd6_session";
			mysql_query("INSERT INTO $tablenya(kd, kd_user_status, dari, msg, postdate) VALUES ".
							"('$komenkd', '$ekdnya', '$kd6_session', '$enilnya', '$today')");



	
			//bikin session
			$_SESSION['komentarku'] = $enilnya;
			
	
			echo "$enilnya [$komentarku].";
			}	
		}	

	
	exit();
	}










//jika daftar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftar'))
	{	
	//daftar
	$tablenya = "user_status$kd6_session";
	$qku = mysql_query("SELECT * FROM $tablenya ".
							"ORDER BY postdate DESC");
	$rku = mysql_fetch_assoc($qku);
	$tku = mysql_num_rows($qku);
	
	
	//jika gak null
	if (!empty($tku))
		{
		do
			{
			$ku_kd = nosql($rku['kd']);
			$ku_userkd = nosql($rku['kd_user']);
			$ku_postdate = $rku['postdate'];
			$ku_status = balikin($rku['status']);
			$ku_urlnya = balikin($rku['urlnya']);
			$ku_urlnya_judul = balikin($rku['urlnya_judul']);
			$ku_urlnya_image = balikin($rku['urlnya_image']);
			$ku_urlnya_deskripsi = balikin($rku['urlnya_deskripsi']);
			
			
			?>
			
			
		
			<script language='javascript'>
			//membuat document jquery
			$(document).ready(function(){
			
			
				$("#btnKOM<?php echo $ku_kd;?>").on('click', function(){
					$('#loading<?php echo $ku_kd;?>').show();
			
					$("#formx<?php echo $ku_kd;?>").submit(function(){
						$.ajax({
							url: "<?php echo $filenyax;?>?aksi=simpan2&kdnya=<?php echo $ku_kd;?>",
							type:$(this).attr("method"),
							data:$(this).serialize(),
							success:function(data){					
								$("#itulisresult<?php echo $ku_kd;?>").html(data);
								setTimeout('$("#loading<?php echo $ku_kd;?>").hide()',5000);
								
								$("#idaftarkom<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ku_kd;?>");
								
								document.formx<?php echo $ku_kd;?>.e_kom<?php echo $ku_kd;?>.value='';
								}
							});
						return false;
					});
				
				
				});	
	
			
			});
			
			</script>
	
			
			<?php		
			//usernya
			//detail user
			$qyukx = mysql_query("SELECT * FROM m_user ".
									"WHERE kd = '$ku_userkd'");
			$ryukx = mysql_fetch_assoc($qyukx);
			$yukx_nama = balikin($ryukx['nama']);
			
			echo '<form name="formx'.$ku_kd.'" id="formx'.$ku_kd.'">
			<div class="panel panel-default">
		    <div class="panel-heading panel-heading-custom">
			<table border="0" cellspading="3" cellspacing="3">
			<tr>
			<td>		
			'.$yukx_nama.'
			<br>
			'.$ku_postdate.'
			<br>
			<h3>'.$ku_status.'</h3>';
			
			

			
			//jika ada
			if (!empty($ku_urlnya_judul))
				{
				echo '<table border="1">
				<tr valign="top">
				<td>
				
				<table border="0">
				<tr valign="top">
				<td width="100">
				<img src="'.$ku_urlnya_image.'" alt="'.$ku_urlnya_judul.'" width="100" height="100">
				</td>
				
				<td>
				<h3>'.$ku_urlnya_judul.'</h3>
				<p><i>'.$ku_urlnya_deskripsi.'</i></p>
				</td>
				</tr>
				</table>
				
				</td>
				</tr>
				</table>';
				}
			 
			 
			echo '<br> 
			[IKUTI]. [jumlah pengikut]
			</td>
			</tr>
			</table>';
	
			
			//jika gak null
			if (!empty($tku))
				{
				echo '<table border="0" cellspading="3" cellspacing="3">
				<tr>
				<td width="50"></td>
				<td>
	
				<div id="idaftarkom'.$ku_kd.'">';
				
				//daftar komentar...
				$tablenya = "user_status_msg$kd6_session";
				$qku2 = mysql_query("SELECT * FROM $tablenya ".
										"WHERE kd_user_status = '$ku_kd' ".
										"ORDER BY postdate ASC");
				$rku2 = mysql_fetch_assoc($qku2);
				$tku2 = mysql_num_rows($qku2);
				
				//jika gak null
				if (!empty($tku2))
					{
					
					do
						{
						$ku2_kd = nosql($rku2['kd']);
						$ku2_dari = nosql($rku2['dari']);
						$ku2_komentar = balikin($rku2['msg']);
						$ku2_postdate = $rku2['postdate'];
						
						
						//jika sama
						if ($ku2_dari == $kd6_session)
							{
							echo '<div class="panel panel-default">
						    <div class="panel-body panel-body-custom">
						    <p>
							'.$ku2_komentar.'
							<br>
							['.$ku2_postdate.']
							</p>
							
							</div>
							</div>';
							}
						
						else
							{
							//detail user
							$qyuk = mysql_query("SELECT * FROM m_user ".
													"WHERE kd = '$ku2_dari'");
							$ryuk = mysql_fetch_assoc($qyuk);
							$yuk_nama = balikin($ryuk['nama']);
							
							echo '<div class="panel panel-default">
						    <div class="panel-body panel-body-custom">
			    			<p>
							[<b>'.$yuk_nama.'</b>]. 
							<br>
							'.$ku2_komentar.'
							<br>
							['.$ku2_postdate.']
							</p>
							
							</div>
							</div>';						
							}
						}
					while ($rku2 = mysql_fetch_assoc($qku2));
					}						
		
				echo '</div>
				
				<div id="loading'.$ku_kd.'" style="display:none">
				<img src="'.$sumber.'/img/ajax-loading.gif" width="16" height="16">
				</div>
				
				<p>
				<input name="e_kom'.$ku_kd.'" id="e_kom'.$ku_kd.'" type="text" size="15">
	
				<input name="btnKOM'.$ku_kd.'" id="btnKOM'.$ku_kd.'" type="submit" value=" >>">
				</p>
					 
				<hr>
				
				
				</td>
				</tr>
				</table>
				
	
				
				</div>';
				}
				
			echo '</div>
			</div>
			</form>';
			}
		while ($rku = mysql_fetch_assoc($qku));
		}	
	
	exit();
	}










//jika daftar komentar...
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftarkom'))
	{
	$ekdnya = cegah($_GET['kdnya']);

	
	//daftar komentar...
	$tablenya = "user_status_msg$kd6_session";
	$qku2 = mysql_query("SELECT * FROM $tablenya ".
							"WHERE kd_user_status = '$ekdnya' ".
							"ORDER BY postdate ASC");
	$rku2 = mysql_fetch_assoc($qku2);
	
	do
		{
		$ku2_kd = nosql($rku2['kd']);
		$ku2_dari = nosql($rku2['dari']);
		$ku2_komentar = balikin($rku2['msg']);
		$ku2_postdate = $rku2['postdate'];
		
		//detail user
		$qyuk = mysql_query("SELECT * FROM m_user ".
								"WHERE kd = '$ku2_dari'");
		$ryuk = mysql_fetch_assoc($qyuk);
		$yuk_nama = balikin($ryuk['nama']);
		
		echo '<div class="panel panel-default">
	    <div class="panel-body panel-body-custom">

		<p>
		[<b>'.$yuk_nama.'</b>]
		<br>
		'.$ku2_komentar.'
		 <br>
		['.$ku2_postdate.']
		</p>

		</div>
		
		</div>';	
		}
	while ($rku2 = mysql_fetch_assoc($qku2));
						
	exit();
	}








//jika form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'form'))
	{
	echo '<form name="formx2" id="formx2">

	<div class="panel panel-default">
    <div class="panel-heading panel-heading-custom">

    
    <div class="panel panel-default">
    <div class="panel-body panel-body-custom">

	<p>
	<textarea name="e_statusku" id="e_statusku" rows="5" cols="60" placeholder="Type something here..."></textarea>
	</p>

	<img src="'.$sumber.'/img/support.png" width="24" height="24" border="0">	
	</div>
	
	</div>
	
	<p>
	<input name="btnKRM" id="btnKRM" type="submit" value="SUBMIT >>">
	</p>

	</div>

	
	</div>
	</form>
	
	
	<div id="loadingku" style="display:none">
	<img src="'.$sumber.'/img/ajax-loading.gif" width="16" height="16">
	</div>';
	
	exit();
	}

?>