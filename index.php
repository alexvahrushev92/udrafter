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

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>
