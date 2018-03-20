<?
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
require("../inc/class/simple_html_dom.php");
	


$filenyax = "i_index.php";




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
	
	//echo "-> $pecah1
	//<hr>";

	

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

	
	
	//echo "status : $statuskd";



	//tampilkan status....
	$tablenya = "user_status$kd6_session";
	$qku = mysql_query("SELECT * FROM $tablenya ".
							"ORDER BY postdate DESC");
	$rku = mysql_fetch_assoc($qku);
	$tku = mysql_num_rows($qku);
	
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

		$("#ikutkomen<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=ikutkomen&kdnya=<?php echo $ku_kd;?>");			
				
	});
	
	</script>

	
	<?php

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
		 
	
	echo '<div id="ikutkomen'.$ku_kd.'"></div>
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
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftar2'))
	{
	?>		
		
	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){

	$("#linknya").on('click', function(){

				
		$.ajax({
			url: "<?php echo $filenyax;?>?aksi=daftarlama",
			type:$(this).attr("method"),
			data:$(this).serialize(),
			success:function(data){			
			    
			    $("#idaftar").append(data);
				
				}
			});
		return false;
		})
			
	});
	
	</script>

			
	<?php		
	//daftar
	$tablenya = "user_status$kd6_session";
	$qku = mysql_query("SELECT * FROM $tablenya ".
							"ORDER BY postdate DESC LIMIT 0,5");
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


			$("#idaftarkom<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ku_kd;?>");			
					
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
			
			 
			echo '[<a href="#">IKUTI</a>].
			<hr>
	
	
			<div id="idaftarkom'.$ku_kd.'"></div>';
	
			
			
			echo '</div>
			</div>
			</form>

			
			</td>
			</tr>
			</table>';
			}
		while ($rku = mysql_fetch_assoc($qku));
		
		
		
			
			
		echo '<br>
		<br>
		
		
		[<a href="#" id="linknya">TAMPILKAN STATUS LAMA</a>]...';
		}	
	
	exit();
	}















/*
//jika daftar lama
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftarlama'))
	{
	?>		
		
	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){

	$("#linknya").on('click', function(){

				
		$.ajax({
			url: "<?php echo $filenyax;?>?aksi=daftarlama",
			type:$(this).attr("method"),
			data:$(this).serialize(),
			success:function(data){			
			    
			    $("#idaftar").append(data);
				
				}
			});
		return false;
		})
			
	});
	
	</script>

			
	<?php		

	//nilai page...
	$pagenya = nosql($_SESSION['pageku']);
	
	

	/*
	//awal
	$nilawal = 5;
	//$nilakhir = 10 * $pagenya;
	$nilakhir = (5 * $pagenya) - 1;
	

	

	//daftar
	$tablenya = "user_status$kd6_session";
	$qku = mysql_query("SELECT * FROM $tablenya ".
							"ORDER BY postdate DESC LIMIT $nilawal,$nilakhir");
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


				$("#idaftarkom<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ku_kd;?>");			
			
						
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
			
			 
			echo '[<a href="#">IKUTI</a>].
			<hr>
	

			<div id="idaftarkom'.$ku_kd.'"></div>';
	
			echo $_SESSION['pageku'];
			
			echo '</div>
			</div>
			</form>

			
			</td>
			</tr>
			</table>';
			}
		while ($rku = mysql_fetch_assoc($qku));
		
		
		
		
		echo '<br>
		<br>
		}	
	
		
		
	
	//bikin session page
	//jika null, page 1
	if (empty($_SESSION['pageku']))
		{
		$_SESSION['pageku'] = 1;
		}

	else
		{
		$_SESSION['pageku'] = $pagenya + 1;
		}
	


	echo $_SESSION['pageku'];

	echo '[<a href="#" id="linknya">TAMPILKAN STATUS LAMA</a>]...';
		

		
	exit();
	}

*/














//jika daftar komentar...
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftarkom'))
	{
	//$ekdnya = cegah($_GET['kdnya']);
	$ekdnya = cegah($_REQUEST['kdnya']);

	?>



	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){


		$("#btnKOM<?php echo $ekdnya;?>").on('click', function(){
		$('#loading<?php echo $ekdnya;?>').show();

		$("#formx<?php echo $ekdnya;?>").submit(function(){
			$.ajax({
				url: "<?php echo $filenyax;?>?aksi=simpan2&kdnya=<?php echo $ekdnya;?>",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#idaftarkom<?php echo $ekdnya;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ekdnya;?>");
					
					setTimeout('$("#loading<?php echo $ekdnya;?>").hide()',1000);
					}
				});
			return false;
		});
	
	
	});	


		
				
	});
	
	</script>

			




	<?php	
	echo '<table border="0" cellspading="3" cellspacing="3">
	<tr>
	<td width="50"></td>
	<td>';
	
	//daftar komentar...
	$tablenya = "user_status_msg$kd6_session";
	$qku2 = mysql_query("SELECT * FROM $tablenya ".
							"WHERE kd_user_status = '$ekdnya' ".
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
	
	<div id="loading'.$ekdnya.'" style="display:none">
	<img src="'.$sumber.'/img/ajax-loading.gif" width="16" height="16">
	</div>';
	?>
	
	<script>
        $('#<?php echo "e_kom$ekdnya";?>').mentionsInput({source: 'i_user.php'});
    </script>
    
	
	
	<?php
	echo '<p>
	<textarea name="e_kom'.$ekdnya.'" id="e_kom'.$ekdnya.'" rows="3" cols="30"></textarea>
	<br>

	<input name="btnKOM'.$ekdnya.'" id="btnKOM'.$ekdnya.'" type="submit" class="btn btn-info" value="KIRIM >>">
	</p>
		 
	<hr>
	
	
	</td>
	
	</tr>
	</table>';
	

				
	exit();
	}










//jika daftar status
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftar'))
	{
	?>
	

	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){
	
		$.ajax({
			url: "<?php echo $filenyax;?>?aksi=daftar2",
			type:$(this).attr("method"),
			data:$(this).serialize(),
			success:function(data){			
			    
			    $("#idaftar").prepend(data);

				}
			});
		return false;

	
	});
	
	</script>
	
	

	<?php
	exit();
	}



//jika form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'form'))
	{
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
					    
					    $("#idaftar").prepend(data);

						$("#itulis").load("<?php echo $filenyax;?>?aksi=form");


				
						setTimeout('$("#loadingku").hide()',1000);
						}
					});
				return false;
			});
		
		
		});	
	
	
	
	
	
	
	});
	
	</script>
	
	

	
	<!-- Bootstrap core JavaScript -->
	<script src="../template/vendor/jquery/jquery.min.js"></script>
	<script src="../template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	
	
	<!-- Bootstrap core CSS -->
	<link href="../template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <link rel="stylesheet" href="../inc/js/jquery-ui-1.10.3/themes/black-tie/jquery-ui.css">
    <link rel="stylesheet" href="../inc/js/jquery.mentions.css">
    <script src="../inc/js/jquery-ui-1.10.3/ui/jquery-ui.js"></script>
    <script src="../inc/js/jquery.mentions.js"></script>


	<script>
        $('#e_statusku').mentionsInput({source: 'i_user.php'});
    </script>
    
    
    
	<?php
	echo '<form name="formx2" id="formx2">

	<div class="panel panel-default">
    <div class="panel-heading panel-heading-custom">

    
    <div class="panel panel-default">
    <div class="panel-body panel-body-custom">

	<p>
	<textarea name="e_statusku" id="e_statusku" rows="5" cols="60" placeholder="Status Kamu ya..."></textarea>
	</p>

	<img src="'.$sumber.'/img/support.png" width="24" height="24" border="0">	
	</div>
	
	</div>
	
	<p>
	<input name="btnKRM" id="btnKRM" type="submit" class="btn btn-info" value="KIRIM >>">
	</p>

	</div>

	
	</div>
	</form>
	
	
	<div id="loadingku" style="display:none">
	<img src="'.$sumber.'/img/ajax-loading.gif" width="16" height="16">
	</div>';
	
	exit();
	}





//jika ikut komentar
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'ikutkomen'))
	{
	$ekdnya = cegah($_REQUEST['kdnya']);

	?>

	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){


		$("#idaftarkom<?php echo $ekdnya;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ekdnya;?>");			
	
				
	});
	
	</script>


	<?php

	echo '[<a href="#">IKUTI</a>].
	<hr>
	
	
	<div id="idaftarkom'.$ekdnya.'"></div>';
	
	exit();
	}



















?>