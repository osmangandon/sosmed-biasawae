<?php
session_start();


//ambil nilai
require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
$tpl = LoadTpl("../template/diriku.html");



nocache;

//nilai
$filenya = "index.php";
$filenyax = "i_status_loadmore.php";
$filenya_ke = $sumber;
$judul = "DIRIKU : $user_session";
$judulku = $judul;





//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	
	




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////












/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//isi *START
ob_start();


?>


	<!doctype html>

<style>

.post{
    width: 97%;
    min-height: 200px;
    padding: 5px;
    border: 1px solid gray;
    margin-bottom: 15px;
}

.post h1{
    letter-spacing: 1px;
    font-weight: normal;
    font-family: sans-serif;
}


.post p{
    letter-spacing: 1px;
    text-overflow: ellipsis;
    line-height: 25px;
}



.more{
    color: blue;
    text-decoration: none;
    letter-spacing: 1px;
    font-size: 16px;
}


</style>

<script src='../inc/js/jquery-3.0.0.js' type='text/javascript'></script>


<!-- Bootstrap core CSS -->
<link href="../template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="../template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">





	        
<div id="idaftar"></div>
<script>

$(document).ready(function(){



$("#iawal").load("i_index.php?aksi=awalnya");



    $(window).scroll(function(){
        
        var position = $(window).scrollTop();
        var bottom = $(document).height() - $(window).height();

        if( position == bottom ){

            var row = Number($('#row').val());
            var allcount = Number($('#all').val());
            var rowperpage = 3;
            row = row + rowperpage;

            if(row <= allcount){
                $('#row').val(row);
                $.ajax({
                    url: 'i_status_loadmore.php?aksi=loadmore',
                    type: 'post',
                    data: {row:row},
                    success: function(response){
                        $(".post:last").after(response).show().fadeIn("slow");
                    }
                });
            }
        
        
       	$('#loading').show();
		setTimeout('$("#loading").hide()',1000);
        }

    });

});
</script>





<div id="iawal"></div>

<?php
$daftarstatus = ob_get_contents();
ob_end_clean();



require("../inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
