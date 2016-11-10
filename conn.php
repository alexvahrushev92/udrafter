<?php
$servername = "udrafter.database.windows.net";
$username = "dbadmin";
$password = "Pa$$w0rd";

try {
        $conn = new PDO("mysql:host=$servername;dbname=udrafter", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
    }
catch(PDOException $e)
    {
        echo "Connection failed: " . $e->getMessage();
    }
?>