<?php
$servername = "udrafter.database.windows.net";
$username = "dbadmin";
$password = "Pa$$";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>