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
//jika batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}
	
	
	




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////












/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//isi *START
ob_start();


?>


	<!doctype html>

<style>
	/* post */
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


/* more link */
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

<!-- Plugin CSS -->
<link href="../template/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../template/css/creative.min.css" rel="stylesheet">

	        
<div id="idaftar"></div>
<script>

$(document).ready(function(){


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




<?php

$rowperpage = 3;


// counting total number of posts
$allcount_query = mysql_query("SELECT * FROM m_publik_user_status");
$allcount_fetch = mysql_fetch_assoc($allcount_query);
$allcount = mysql_num_rows($allcount_query);

// select first 3 posts
$query = mysql_query("select * from m_publik_user_status ".
							"order by postdate DESC limit 0,$rowperpage ");
$row = mysql_fetch_assoc($query);


do
	{
    $id = $row['kd'];
    $title = $row['status'];
    $content = $row['postdate'];
	
	$ku_kd = nosql($row['kd']);
	$ku_userkd = nosql($row['kd_user']);
	$ku_postdate = $row['postdate'];
	$ku_status = balikin($row['status']);
	$ku_urlnya = balikin($row['urlnya']);
	$ku_urlnya_judul = balikin($row['urlnya_judul']);
	$ku_urlnya_image = balikin($row['urlnya_image']);
	$ku_urlnya_deskripsi = balikin($row['urlnya_deskripsi']);
	
	?>
	
	

	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){


	$("#idaftarkom<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=daftarkom&kdnya=<?php echo $ku_kd;?>");			
			
	});
	
	</script>

	
	<?php		

    echo '<div class="post" id="post_'.$id.'">

	<form name="formx'.$ku_kd.'" id="formx'.$ku_kd.'">
	<div class="panel panel-default">
    <div class="panel-heading panel-heading-custom">
	<table border="0" cellspading="3" cellspacing="3">
	<tr>
	<td>	
	<h3>'.$ku_status.'</h3>'.$ku_postdate.'';
	
		

		
	//jika ada
	if (!empty($ku_urlnya_judul))
		{
		echo '<table border="1">
		<tr valign="top">
		<td>
		
		<table border="0">
		<tr valign="top">
		<td width="100">
		<img src="'.$ku_urlnya_image.'" alt="'.$ku_urlnya_judul.'" width="100" height="100">
		</td>
		
		<td>
		<h3>'.$ku_urlnya_judul.'</h3>
		<p><i>'.$ku_urlnya_deskripsi.'</i></p>
		</td>
		</tr>
		</table>
		
		</td>
		</tr>
		</table>';
		}
		
	 
	echo '[<a href="#">IKUTI</a>].
	<br>


	<div id="idaftarkom'.$ku_kd.'"></div>
	
	
	</td>
	</tr>
	</table>
	
	</div>
	</div>
	</form>

        
    </div>';


	}
while ($row = mysql_fetch_assoc($query));
?>

<input type="hidden" id="row" value="0">
<input type="hidden" id="all" value="<?php echo $allcount; ?>">



<?php

$daftarstatus = ob_get_contents();
ob_end_clean();



require("../inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
