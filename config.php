<?php
$servername = "localhost";
$username = "root";
$password = "Praveen@123";
$dbname = "projecttables";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
?>
