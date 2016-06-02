<?php 
include "conexionDB/conectar.php";

if ($_POST) {

    $categorias = array();

    if (isset($_POST['tarea'])) {
        $tarea = $_POST['tarea'];
    }
    if (isset($_POST['php'])) {
        $php = $_POST['php'];
        array_push($categorias, $php);
    }
    if (isset($_POST['js'])) {
        $js = $_POST['js'];
        array_push($categorias, $js);
    }
    if (isset($_POST['css'])) {
        $css = $_POST['css'];
        array_push($categorias, $css);
    }



    $mysqli = new mysqli($server, $user, $pass, $dbName);
    $mysqli->query("INSERT into tareas (nombre_tarea) VALUES ('".$tarea."')");

    $lastTarea_ID = mysqli_insert_id($mysqli);
    
    for ($i=0; $i < count($categorias); $i++) { 
        $mysqli->query("INSERT into tareas_categorias VALUES ('".$lastTarea_ID."', '".$categorias[$i]."')");
    }

    $query = "SELECT * FROM tareas";
    $tareas = array();

    if ($result = $mysqli->query($query)) {
            echo '<table class="tabla-tareas" border="1" cellpadding="1" cellspacing="0" align="center">';
            echo '<tr class="table-header"><td>Tarea</td><td colspan="1">Categorías</td><td>Acciones</td></tr>';
        while ( $row = $result->fetch_assoc() ){
            echo '<tr id="t-'.$row["ID_tarea"].'"><td>'.$row["nombre_tarea"].'</td><td>';
            $query2 = 'SELECT nombre_categoria FROM categorias, tareas_categorias WHERE ID_categorias = ID_categoria AND ID_tareas = '.$row["ID_tarea"];

            if ( $result2 = $mysqli->query($query2) ) {
                while ($row2 = $result2->fetch_assoc() ) {
                    echo '<span class="cat">'.$row2['nombre_categoria']."</span>";
                }
            }
            echo '</td><td><img id="'.$row["ID_tarea"].'" class="borrar" width="10px" src="borrar.png" /></td></tr>';
        }
        echo '</table';
    }

  
    /*foreach ($tareas as $tarea){
        echo '<table align="center">';
        echo '<tr><td>'.$tarea["nombre_tarea"].'</td><td><img id="'.$tarea["ID_tarea"].'" class="borrar" width="10px" src="borrar.png" /></td></tr>';       
    }*/

    $mysqli->close();



    //$id= mysql_insert_id(); //recupera el ID de la ultima insercion que se ha hecho

?>



<?php }//if ?>

