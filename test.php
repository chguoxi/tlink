<?php 
// set database server access variables:
$host = "localhost";
$user = "webdbadmin";
$pass = "timelink";
$db = "webdb";
// open connection
$connection = mysql_connect($host, $user, $pass) or die ("Unable to connect!");
// select database
mysql_select_db($db) or die ("Unable to select database!");

echo "every is ok111";

?>