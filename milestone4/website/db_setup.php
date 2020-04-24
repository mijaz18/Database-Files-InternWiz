<?php
$servername = "localhost";
$username = "mijaz";
$password = "kzX=%tuT";

$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

?>


