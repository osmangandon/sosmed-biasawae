<?php
session_start();


//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
$tpl = LoadTpl("template/cp_depan.html");



nocache;

//nilai
$filenya = "index.php";
$filenya_ke = $sumber;
$judul = "LOGIN USER";
$judulku = $judul;






//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}
	
	
	




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









//isi *START
ob_start();



//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){



$("#ilogin").load("i_login.php?aksi=form");


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

[<a href="reg.php">BIKIN AKUN</a>]. 
[<a href="lupa.php">LUPA PASSWORD</a>].';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>





<?php
//isi
$isi = ob_get_contents();
ob_end_clean();

require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
