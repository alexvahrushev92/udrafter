<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Deployment Test</title>
</head>
<body>

<H2> we deployed database</H2>
<br/>
<?php
$servername = "eu-cdbr-azure-west-a.cloudapp.net";
$username = "b6ad17a3124efa";
$password = "721ca477";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>
</body>
</html>

