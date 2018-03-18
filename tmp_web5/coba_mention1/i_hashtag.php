<?php
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/class/paging.php");

nocache;


//nilai
$limit = "10";
$return_arr = array();
$term = cegah($_GET['term']);


//query
$p = new Pager();
$start = $p->findStart($limit);
                
$sqlcount = "SELECT * FROM m_publik_user ".
                "WHERE nama LIKE '%$term%' ".
                "OR usernamex LIKE '%$term%' ".
                "ORDER BY nama ASC";
$sqlresult = $sqlcount;
$target = $filenya;
$count = mysql_num_rows(mysql_query($sqlcount));
$pages = $p->findPages($count, $limit);
$result = mysql_query("$sqlresult LIMIT ".$start.", ".$limit);
$pagelist = $p->pageList($_GET['page'], $pages, $target);
$data = mysql_fetch_array($result);


do
    {
    $i_nama = trim(balikin($data["usernamex"]));
    

    $row_array["value"] = $i_nama;
    $row_array["uid"] = $i_nama;



//    $row_array["value"] = "$i_nama";
//    $row_array["label"] = "$i_nama";
//    $row_array["description"] = "$i_nama";

    array_push($return_arr, $row_array);
    }
while ($data = mysql_fetch_assoc($result));



header("Content-Type: text/json");
echo json_encode($return_arr);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>
