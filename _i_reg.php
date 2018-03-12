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
	$e_user = cegah($_GET['e_user']);
	$e_pass = md5(cegah($_GET['e_pass']));

	
	//empty
	if ((empty($e_nama)) OR (empty($e_email)) OR (empty($e_user)) OR (empty($e_pass)))
		{
		echo '<h3>ERROR</h3>';	
		} 
	else
		{
		//cek
		$qku = mysql_query("SELECT * FROM m_user ".
								"WHERE usernamex = '$e_user' ".
								"OR email = '$e_email'");
		$rku = mysql_fetch_assoc($qku);
		$tku = mysql_num_rows($qku);
		
		//jika sudah ada
		if (!empty($tku))
			{
			echo '<h1>
			ERROR... COBA LAGI...
			</h1>';
			}
		else
			{
			$kdnya = $x;
			
			//bikin baru
			mysql_query("INSERT INTO m_user(kd, usernamex, passwordx, nama, email, postdate) VALUES ".
							"('$kdnya', '$e_user', '$e_pass', '$e_nama', '$e_email', '$today')");
			
		
			echo '<h3>
			AKUN BARU BERHASIL DIBUAT. SILAHKAN LOGIN...!!
			</h3>';

			?>
			
			
			
			<script language='javascript'>
			//membuat document jquery
			$(document).ready(function(){
					window.location.href = "login.php"; 
			
			});
			
			</script>
			
			<?php
			
	
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
	}
?>