<?php


require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");


?>


<!doctype html>
<html>
    <head>
        <title>Load content on page scroll with jQuery and AJAX</title>
        <link href='style.css' rel='stylesheet' type='text/css'>
        <script src='jquery-3.0.0.js' type='text/javascript'></script>
        
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
                            url: 'fetch_data.php',
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
        
    </head>
    <body>

        <div class="container">

            <?php
            //include "config.php";
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
            ?>

                <div class="post" id="post_<?php echo $id; ?>">
                    <h1><?php echo $title; ?></h1><?php echo $content;?>
                </div>

            <?php
            	}
			while ($row = mysql_fetch_assoc($query));
            ?>

            <input type="hidden" id="row" value="0">
            <input type="hidden" id="all" value="<?php echo $allcount; ?>">

        
<div id="loading">
<img src="sebentar.gif" width="16" height="16">
<font color="white" style="background-color:red; width:200px;">
Sebentar...
</font>
</div>


        </div>
        
        

    </body>
</html>
