<?php
if(isset($_POST) && !empty($_POST['text']) && $_POST['text'] != '')
{
	include '../config/config.php';
	$user = 1; //w3lessons demo user

	$text = strip_tags($_POST['text']); //clean the text

	$DB->query("INSERT INTO _tmp_coba(kd,cobaya) VALUES(?,?)", array($text,$user));
	 ?>
	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p><?php echo getMentions($text); ?></p>
    </div>
  </div>
  <hr>
  <?php
} else {
    echo "1"; //Post Cannot be empty!
}


function getMentions($content)
{
	global $DB;
    $mention_regex = '/@\[([0-9]+)\]/i'; //mention regrex to get all @texts
    
    if (preg_match_all($mention_regex, $content, $matches))
    {
        foreach ($matches[1] as $match)
        {
            $match_user =$DB->row("SELECT * FROM m_publik_user WHERE usernamex=?",array($match));

            
            $match_search = '@[' . $match . ']';
            $match_replace = '<a target="_blank" href="' . $match_user['usernamex'] . '">@' . $match_user['usernamex'] . '</a>';
            
            if (isset($match_user['usernamex']))
            {
                $content = str_replace($match_search, $match_replace, $content);
            }

        }
    } 
    return $content;
}
