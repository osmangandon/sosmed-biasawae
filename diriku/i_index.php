<?
session_start();

require("../inc/config.php");
require("../inc/fungsi.php");
require("../inc/koneksi.php");
require("../inc/cek/user.php");
require("../inc/class/simple_html_dom.php");
	


$filenyax = "i_status_loadmore.php";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika awal
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'awalnya'))
	{

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
		$("#iformkom<?php echo $ku_kd;?>").load("<?php echo $filenyax;?>?aksi=formkom&kdnya=<?php echo $ku_kd;?>");			
				
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
			<a href="'.$ku_urlnya.'" target="_blank">
			<h3>'.$ku_urlnya_judul.'</h3>
			<p><i>'.$ku_urlnya_deskripsi.'</i></p>
			</a>
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
	<div id="iformkom'.$ku_kd.'"></div>
	
	
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



	}


exit();
?>