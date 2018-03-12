<?php
session_start();


//ambil nilai
require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
$tpl = LoadTpl("../template/index.html");



nocache;

//nilai
$filenya = "index.php";
$filenyax = "i_index.php";
$filenya_ke = $sumber;
$judul = "Halo... $user_session";
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
require("../inc/menu/user.php");

?>



<script language='javascript'>
//membuat document jquery
$(document).ready(function(){



$("#ilogin").load("<?php echo $filenyax;?>?aksi=form");
$("#idaftar").load("<?php echo $filenyax;?>?aksi=daftar");


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
