<?php
session_start();


//ambil nilai
require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
$tpl = LoadTpl("../template/coba.html");



nocache;

//nilai
$filenya = "coba.php";
$filenya_ke = $sumber;
$judul = "coba...";
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



$("#ilogin").load("i_coba.php?aksi=form");
$("#idaftar").load("i_coba.php?aksi=daftar");


});

</script>




<?php
echo '<table width="100%" border="0" cellpadding="5" cellspacing="5">
<tr>
<td valign="top">

<div id="iloginresult"></div>
<div id="ilogin">
<img src="../img/ajax-loading.gif" width="16" height="16">
</div>

<div id="idaftar">
<img src="../img/ajax-loading.gif" width="16" height="16">
</div>

	
</td>
</tr>
</table>';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>





<?php
//isi
$isi = ob_get_contents();
ob_end_clean();

require("../inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
