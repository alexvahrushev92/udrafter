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
Server: udrafter.database.windows.net,1433 \r\nSQL Database: udrafter\r\nUser Name: dbadmin\r\n\r\nPHP Data Objects(PDO) Sample Code:\r\n\r\ntry {\r\n   $conn = new PDO ( \"sqlsrv:server = tcp:udrafter.database.windows.net,1433; Database = udrafter\", \"dbadmin\", \"Pa$$w0rd\");\r\n    $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );\r\n}\r\ncatch ( PDOException $e ) {\r\n   print( \"Error connecting to SQL Server.\" );\r\n   die(print_r($e));\r\n}\r\n\rSQL Server Extension Sample Code:\r\n\r\n$connectionInfo = array(\"UID\" => \"dbadmin@udrafter\", \"pwd\" => \"Pa$$w0rd\", \"Database\" => \"udrafter\", \"LoginTimeout\" => 30, \"Encrypt\" => 1, \"TrustServerCertificate\" => 0);\r\n$serverName = \"tcp:udrafter.database.windows.net,1433\";\r\n$conn = sqlsrv_connect($serverName, $connectionInfo);


?>
