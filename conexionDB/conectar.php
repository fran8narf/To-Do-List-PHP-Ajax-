<?php
	$server = "localhost";
    $user = "root";
    $pass = "root";
    $dbName = "prueba_netberry";

    $connection = new mysqli($server, $user, $pass, $dbName);

    if ($connection->connect_error) {
        die("Conexión con la BBDD fallida, error: ". $connection->connect_error);
 	}

 	$connection->close();
?>