<?php
	header('Content-Type: application/json');
	include 'conectar.php';

    $tareaID = $_POST['borrarID'];
	

    $mysqli = new mysqli($server, $user, $pass, $dbName);
    $mysqli->autocommit(false);

    if ( isset($_POST['borrarID']) ) {
    	$sql1 = $mysqli->query("DELETE FROM tareas_categorias where ID_tareas = ".$tareaID);
    	$sql2 = $mysqli->query("DELETE FROM tareas where ID_tarea = ".$tareaID);
	

		if($sql1 == true && $sql2 == true){
			$mysqli->commit();
		} else {
			$mysqli->rollback();
		}
	}
    $mysqli->close();
?>