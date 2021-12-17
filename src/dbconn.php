<?php
/* Php & mysql db connection file */
$user = "root"; // mysql username
$pass = ""; // mysql password
$host = "localhost"; // server name
$dbname = "rental_db"; // db name

// Create connection
$conn = mysqli_connect($host, $user, $pass, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
?>