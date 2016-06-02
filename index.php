<!DOCTYPE html>
	<html>
	    <head>
	        <meta charset="UTF-8">   
	        <title></title>
	        <link rel="stylesheet" type="text/css" href="css/estilos.css">
	    </head>

	    <body>
	    <h1 class="title-gestor">Gestor de Tareas</h1>

	    <div class="container">
		    <form id="form-tareas" method="POST" action="submit.php">
		    	<input type="text" name="tarea" id="tarea" placeholder="Nueva tarea...">
		    	<input type="checkbox" name="php" id="php" value="1">PHP
		    	<input type="checkbox" name="js" id="js" value="2">Javascript
		    	<input type="checkbox" name="css" id="css" value="3">CSS
		    	<input type="submit" value="Añadir">
		    </form>

		    <div class="tareas"></div>
	    </div>
		    
	 	<script src="js/jquery-1.12.4.min.js"></script>
	 	<script type="text/javascript" src="js/main.js"></script>
	    </body>
	</html>