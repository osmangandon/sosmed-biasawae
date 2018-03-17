<?php
define('DBHost', 'localhost');
define('DBName', 'biasawae_social_media');
define('DBUser', 'biasawae');
define('DBPassword', 'biasawae');
global $DB;
require(dirname(__FILE__)."/PDO.class.php");
$DB = new Db(DBHost, DBName, DBUser, DBPassword);
