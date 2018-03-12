<?php
sleep(1);

session_start();


ini_set('max_execution_time', 0);



//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
$tpl = LoadTpl("template/cp_depan.html");

	


nocache;

//nilai
$filenya = "reg.php";
$s = nosql($_REQUEST['s']);
$kd = nosql($_REQUEST['kd']);
$judul = "BIKIN AKUN...";
$judulku = $judul;

			


//kirim
if ($_POST['btnOK'])
	{
	//ambil nilai
	$e_nama = cegah($_POST["e_nama"]);
	$e_alamat = cegah($_POST["e_alamat"]);
	$e_telp = cegah($_POST["e_telp"]);
	$e_email = cegah($_POST["e_email"]);
	$e_web = cegah($_POST["e_web"]);
	
	
	//bikin sesi login
	$_SESSION['sesilogin'] = $x;
	

	//cek null
	if ((empty($e_nama)) OR (empty($e_alamat)) OR (empty($e_telp)) OR (empty($e_email)) OR (empty($e_web)))
		{
		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		pekem($pesan,$filenya);
		exit();
		}
	else
		{
		//query
		$q = mysql_query("SELECT * FROM member ".
							"WHERE email = '$e_email'");
		$row = mysql_fetch_assoc($q);
		$total = mysql_num_rows($q);

		//cek 
		if (empty($total))
			{
			//insert
			mysql_query("INSERT INTO member(loginsesi, nama, alamat, telp, email, web) VALUES ".
							"('$sesilogin', '$e_nama', '$e_alamat', '$e_telp', '$e_email', '$e_web')");
			
			//re-direct
			$ke = "$filenya?s=akses&kd=$sesilogin";
			xloc($ke);
			exit();
			}
		else
			{
			//re-direct
			$pesan = "E-Mail Sudah Pernah Digunakan... HARAP DIULANGI...!!!";				
			pekem($pesan,$filenya);
			exit();
			}
		}
	//...............................................................................................................................



	}








//isi *START
ob_start();




?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){



$("#ilogin").load("i_reg.php?aksi=form");


});

</script>




<?php
echo '<table width="100%" border="0" cellpadding="5" cellspacing="5">
<tr>
<td valign="top">


<div id="iloginresult"></div>
<div id="ilogin">
<img src="img/progress-bar.gif" width="100" height="16">
</div>

	
</td>
</tr>
</table>

<hr>

[<a href="login.php">LOGIN</a>]. 
[<a href="lupa.php">LUPA PASSWORD</a>].';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





//isi
$isi = ob_get_contents();
ob_end_clean();

require("inc/niltpl.php");


exit();
?>