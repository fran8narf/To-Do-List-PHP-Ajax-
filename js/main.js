$(document).ready(function(){

	$(document).on('submit', '#form-tareas', function(){
		var data = $(this).serialize();

		$.ajax({
			type: 'POST',
			url: 'submit.php',
			data: data,
			success: function(data){
				$(".tareas").html(data);
				
			}
		});
		return false;
	});

		$(document).on('click', '.borrar', function(){
		var IDborrar = $(this).attr("id");

		$.ajax({
			type: 'post',
			url: 'conexionDB/borrarTareas.php?borrarID='+IDborrar,
			data: {borrarID: IDborrar},
			dataType: 'text',
			success: function(data){

				$("#t-"+IDborrar).remove();
			}
		});
		return false;
	});
});