<?php
require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");



//kasi random kode
$kdnya = "$today$x";

?>



<script>
$(document).ready(function(){

$("#btnCOBA").on('click', function(){
	alert("coba<?php echo $kdnya;?>");
    });





})
</script>



<?php
echo "$today
<br>

<input name=\"btnCOBA\" id=\"btnCOBA\" type=\"button\" value=\"COBA>>\">

<hr>";









//update data, bila udah tampil...


?>