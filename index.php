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
    echo "hello world!!!";
?>

<?php
$servername = "udrafterdbserver.database.windows.net";
$username = "dbserveradmin";
$password = "Udrafter$$2016";

try {
        $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
    }
catch(PDOException $e)
    {
        echo "Connection failed: " . $e->getMessage();
    }
?>