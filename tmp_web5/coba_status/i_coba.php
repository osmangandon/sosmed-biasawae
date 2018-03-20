<?php
session_start();


require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
	


$xku = $x;
?>



	
	<!-- Bootstrap core JavaScript -->
	<script src="../../template/vendor/jquery/jquery.min.js"></script>
	<script src="../../template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Plugin JavaScript -->
	<script src="../../template/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="../../template/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="../../template/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	
	<!-- Custom scripts for this template -->
	<script src="../../template/js/creative.min.js"></script>
	
	
	
	<!-- Bootstrap core CSS -->
	<link href="../../template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom fonts for this template -->
	<link href="../../template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- Plugin CSS -->
	<link href="../../template/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="../../template/css/creative.min.css" rel="stylesheet">
	

  

<script>
$(document).ready(function(){
    $("#btn1").click(function(){
        $('.box').prepend("<div class='newbox'>randomku <?php echo $xku;?></div>");
        
		$("#formku").load("i_coba.php");
    });
    

});
</script>



<button id="btn1">Prepend text</button>
	

