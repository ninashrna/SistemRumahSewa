<?php

$sname= "localhost";
$unmae= "root";
$password = "";

$db_name = "rental_db";

$connect = mysqli_connect($sname, $unmae, $password, $db_name)OR DIE("Connection failed");
?>