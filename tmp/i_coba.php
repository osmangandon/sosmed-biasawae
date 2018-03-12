<?
sleep(1);
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
	



?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){


	$("#btnKRM").on('click', function(){
		$('#loadingku').show();

		$("#formx2").submit(function(){
			$.ajax({
				url: "i_coba.php?aksi=simpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#iloginresult").html(data);
					setTimeout('$("#loadingku").hide()',5000);
					
					$("#idaftar").load("i_coba.php?aksi=daftar");
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
	sleep(1);


	//ambil nilai
	$estatusku = cegah($_GET['e_statusku']);
	$estatusku1 = $_SESSION['estatusku'];
	
	//gak empty
	if (!empty($estatusku))
		{
		//cek
		if ($estatusku1 != $estatusku)
			{
			//simpan ke database
			mysql_query("INSERT INTO tmp_status(kd, statusku, postdate) VALUES ".
							"('$x', '$estatusku', '$today')");
	
			$_SESSION['estatusku'] = $estatusku;
			}
		}	

	
	exit();
	}









//jika simpan komentar...
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'simpan2'))
	{
	sleep(1);


	//ambil nilai
	$ekdnya = cegah($_GET['kdnya']);
	$enil1 = "e_kom$ekdnya";
	$enilnya = cegah($_GET[$enil1]);

	$komentarku = $_SESSION['komentarku'];
	
	//gak empty
	if (!empty($enilnya))
		{
		//cek
		if ($komentarku != $enilnya)
			{
			//simpan ke database
			mysql_query("INSERT INTO tmp_status_comment(kd, kd_status, komentar, postdate) VALUES ".
							"('$x', '$ekdnya', '$enilnya', '$today')");
	
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
	sleep(1);

	
	//daftar
	$qku = mysql_query("SELECT * FROM tmp_status ".
							"ORDER BY postdate DESC");
	$rku = mysql_fetch_assoc($qku);
	
	do
		{
		$ku_kd = nosql($rku['kd']);
		$ku_status = balikin($rku['statusku']);
		
		
		?>
		
		
	
		<script language='javascript'>
		//membuat document jquery
		$(document).ready(function(){
		
		
			$("#btnKOM<?php echo $ku_kd;?>").on('click', function(){
				$('#loading<?php echo $ku_kd;?>').show();
		
				$("#formx<?php echo $ku_kd;?>").submit(function(){
					$.ajax({
						url: "i_coba.php?aksi=simpan2&kdnya=<?php echo $ku_kd;?>",
						type:$(this).attr("method"),
						data:$(this).serialize(),
						success:function(data){					
							$("#iloginresult<?php echo $ku_kd;?>").html(data);
							setTimeout('$("#loading<?php echo $ku_kd;?>").hide()',5000);
							
							$("#idaftarkom<?php echo $ku_kd;?>").load("i_coba.php?aksi=daftarkom&kdnya=<?php echo $ku_kd;?>");
							
							document.formx<?php echo $ku_kd;?>.e_kom<?php echo $ku_kd;?>.value='';
							}
						});
					return false;
				});
			
			
			});	

		
		});
		
		</script>

		
		<?php		
		echo '<form name="formx'.$ku_kd.'" id="formx'.$ku_kd.'">
		'.$ku_status.'

		
		<div id="idaftarkom'.$ku_kd.'">';
		
		//daftar komentar...
		$qku2 = mysql_query("SELECT * FROM tmp_status_comment ".
								"WHERE kd_status = '$ku_kd' ".
								"ORDER BY postdate ASC");
		$rku2 = mysql_fetch_assoc($qku2);
		
		do
			{
			$ku2_kd = nosql($rku2['kd']);
			$ku2_komentar = balikin($rku2['komentar']);
			
			echo '<p>
			--> '.$ku2_komentar.'
			</p>';
			}
		while ($rku2 = mysql_fetch_assoc($qku2));
					

		echo '</div>
		
		<div id="loading'.$ku_kd.'" style="display:none">
		<img src="../img/ajax-loading.gif" width="16" height="16">
		</div>
		
		<p>
		<input name="e_kom'.$ku_kd.'" id="e_kom'.$ku_kd.'" type="text" size="15">
		</p>
		
		<p>
		<input name="btnKOM'.$ku_kd.'" id="btnKOM'.$ku_kd.'" type="submit" value="COMMENT >>">
		</p>
			 
		<hr>
		
		</form>';
		}
	while ($rku = mysql_fetch_assoc($qku));

	
	exit();
	}










//jika daftar komentar...
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'daftarkom'))
	{
	sleep(1);
	$ekdnya = cegah($_GET['kdnya']);

	//daftar komentar...
	$qku2 = mysql_query("SELECT * FROM tmp_status_comment ".
							"WHERE kd_status = '$ekdnya' ".
							"ORDER BY postdate ASC");
	$rku2 = mysql_fetch_assoc($qku2);
	
	do
		{
		$ku2_kd = nosql($rku2['kd']);
		$ku2_komentar = balikin($rku2['komentar']);
		
		echo '<p>
		--> '.$ku2_komentar.'
		</p>';
		}
	while ($rku2 = mysql_fetch_assoc($qku2));
					

	
	exit();
	}








//jika form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'form'))
	{
	echo '<form name="formx2" id="formx2">

	<p>
	<img src="'.$sumber.'/img/support.png" width="24" height="24" border="0">
	<h1>status mu</h1>
	</p>
	
	<p>
	<input name="e_statusku" id="e_statusku" type="text" size="15">
	</p>
	
	<p>
	<input name="btnKRM" id="btnKRM" type="submit" value="SUBMIT >>">
	</p>

	</form>
	
	
	<div id="loadingku" style="display:none">
	<img src="../img/ajax-loading.gif" width="16" height="16">
	</div>';
	}
?>