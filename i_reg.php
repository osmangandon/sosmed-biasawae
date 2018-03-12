<?
sleep(1);
session_start();

require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
	



?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){

	$("#btnKRM").on('click', function(){
		$('#loading').show();

		$("#formx2").submit(function(){
			$.ajax({
				url: "i_reg.php?aksi=simpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#iloginresult").html(data);
					setTimeout('$("#loading").hide()',5000);
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
	$e_nama = cegah($_GET['e_nama']);
	$e_email = cegah($_GET['e_email']);
	$e_email2 = seo_webnya($e_email);
	$e_user = seo_webnya($_GET['e_user']);
	$e_pass = md5(cegah($_GET['e_pass']));

	
	//empty
	if ((empty($e_nama)) OR (empty($e_email)) OR (empty($e_user)) OR (empty($e_pass)))
		{
		echo '<h3>ERROR</h3>';	
		} 
	else
		{
		//folder user
		$randku = rand(1,1000);
		$f_userkdx = "$x$randku";
		$f_userkdx2 = "$e_user-$x$randku";
		$f_userkd = "filebox/userkd/$f_userkdx2";
		$f_user = "filebox/user/$e_user";
		$f_usernya = "filebox/user/$e_user/$f_userkdx";
		$f_email = "filebox/email/$e_email2";
		
		
		//status
		$f_userkd_status = "filebox/userkd/$f_userkdx2/status";
		$f_userkd_event = "filebox/userkd/$f_userkdx2/event";
		$f_userkd_chat = "filebox/userkd/$f_userkdx2/chat";
		$f_userkd_keahlian = "filebox/userkd/$f_userkdx2/keahlian";
		$f_userkd_minat = "filebox/userkd/$f_userkdx2/minat";
		$f_userkd_profil = "filebox/userkd/$f_userkdx2/profil";
		$f_userkd_teman = "filebox/userkd/$f_userkdx2/teman";
		
		
		
		//ambil sesi		
		$e_user_sesi = $_SESSION['e_user2'];

		//cek session
		if ($e_user_sesi != $e_user)
			{
			//jika belum ada, bikin baru		
			if ((!file_exists($f_user)) OR (!file_exists($f_email)))
				{
				mkdir($f_user, 0777, true);			
				chmod($f_user,0777);
		
				mkdir($f_usernya, 0777, true);			
				chmod($f_usernya,0777);
				
				mkdir($f_email, 0777, true);			
				chmod($f_email,0777);
			
				mkdir($f_userkd, 0777, true);			
				chmod($f_userkd,0777);
			
				mkdir($f_userkd_chat, 0777, true);			
				chmod($f_userkd_chat,0777);
				
				mkdir($f_userkd_event, 0777, true);			
				chmod($f_userkd_event,0777);
				
				mkdir($f_userkd_keahlian, 0777, true);			
				chmod($f_userkd_keahlian,0777);
				
				mkdir($f_userkd_minat, 0777, true);			
				chmod($f_userkd_minat,0777);
				
				mkdir($f_userkd_profil_chat, 0777, true);			
				chmod($f_userkd_profil,0777);
				
				mkdir($f_userkd_status, 0777, true);			
				chmod($f_userkd_status,0777);
				
				mkdir($f_userkd_teman, 0777, true);			
				chmod($f_userkd_teman,0777);
				

				$yuk_kd = $f_userkdx;
				
				//bikin session
				$_SESSION["e_user2"] = $e_user;
				$_SESSION["userkd"] = $f_userkdx;


				//entri text kd
				$nilya2 = "$f_user/$e_user.txt";
				
				$myfile = fopen("$nilya2", "w") or die("Unable to open file!");
				$txt = "$f_userkdx";
				fwrite($myfile, $txt);
				fclose($myfile);
				
				chmod($nilya2,0777);
				


				echo '<h3>
				AKUN BARU BERHASIL DIBUAT. SILAHKAN LOGIN...!! '.$f_userkdx.'
				</h3>';
	


				//jalankan sql
				require("i_reg_sql.php");


				//entri data...
				$yuk1 = "user";
				$yuk1x = "$yuk1$f_userkdx";				
				
				mysql_query("INSERT INTO $yuk1x(kd, usernamex, passwordx, nama, email, postdate) VALUES ".
								"('$f_userkdx', '$e_user', '$e_pass', '$e_nama', '$e_email', '$today')");
				
								
				exit();
				}
			else
				{
				echo "USERNAME ATAU EMAIL SUDAH DIGUNAKAN. SILAHKAN GANTI LAINNYA...!!";
				exit();
				}
				
			}

		}	

	
	exit();
	}



//jika form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'form'))
	{
	echo '<form name="formx2" id="formx2">

	<p>
	<h1>BIKIN AKUN BARU</h1>
	</p>
	
	
	<p>
	Nama :
	<br>
	<input name="e_nama" id="e_nama" type="text" size="15">
	</p>
	
	<p>
	E-Mail :
	<br>
	<input name="e_email" id="e_email" type="text" size="15">
	</p>
	
	<p>
	Username :
	<br>
	<input name="e_user" id="e_user" type="text" size="15">
	</p>
	
	<p>
	Password :
	<br>
	<input name="e_pass" id="e_pass" type="password" size="15">
	</p>
	
	<p>
	<input name="btnKRM" id="btnKRM" type="submit" value="SUBMIT >>">
	</p>

	</form>';
	
	exit();
	}


exit();
?>