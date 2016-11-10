<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Deployment Test</title>
</head>
<body>
<H1> XERES</H1>
<H2> we deployed database</H2>
<H3> testing database</H3>
<H3> connecting...</H3>
</body>
</html>
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