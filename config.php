<?php
$user = 'root';
$password = 'root';
$db = 'House';
$host = 'localhost';

$con = mysqli_connect($host, $user, $password,$db);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}

?>
