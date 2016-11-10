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
$servername = "eu-cdbr-azure-west-a.cloudapp.net";
$username = "b80f75f9cd38fe";
$password = "c069e447";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>