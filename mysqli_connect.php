<?php # script 9.2 - mysql_coonnect_php

define('DB_USER', 'id20410667_fewholesale1');
define('DB_PASSWORD', '=\<abUoZ3*aSi=/%');
define('DB_HOST', 'localhost');
define('DB_NAME', 'id20410667_fewholesale');


$dbc  = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die('Could not connect to the database'
.mysqli_connect_error());

mysqli_set_charset($dbc, 'utf8');
?>