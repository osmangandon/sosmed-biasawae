<?
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
	


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



	//gak empty
	if (!empty($estatusku))
		{
		//cek
		if ($estatusku1 != $estatusku)
			{
			//simpan ke publik
			mysql_query("INSERT INTO m_publik_user_status(kd, kd_user, status, postdate, filex) VALUES ".
							"('$statuskd', '$kd6_session', '$estatusku', '$today', '$efilex')");

			//simpan ke diri
			$tablenya = "user_status$kd6_session";
			mysql_query("INSERT INTO $tablenya(kd, status, postdate, filex) VALUES ".
							"('$statuskd', '$estatusku', '$today', '$efilex')");

				
			$_SESSION['estatusku'] = $estatusku;
			}
		}	

	
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
			<b>'.$ku_status.'</b>
			 
			<br> 
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