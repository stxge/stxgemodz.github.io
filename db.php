<?php

$server = "sql203.epizy.com	";
$username = "epiz_33777691";
$password = "efEXiCrtXQ";
$dbname = "epiz_33777691_StxgesModz";
$conn = mysqli_connect($server, $username, $password, $dbname);

if(!$conn){
    die("Connection Failed:").mysqli_connect_error();
}

?>