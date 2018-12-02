<?php

session_start();
//variables que me permite mantener classroom con los datos pertenecientes al curso.
require("../../conection/conexion.php");


@$_POST['idPrueba'];
@$_POST['nombrePrueba'];
@$_POST['numeroPreguntas'];


@$_POST['nombreCurso'];
@$_POST['nombreGrado'];
@$_POST['seccion'];
@$_POST['nivel'];
@$_POST['grado'];
@$_POST['idCurso'];
@$_POST['portada'];


@$_POST['idPregunta'];
@$_POST['punteo'];
@$_POST['respuesta'];

//obtenermos la fecha del sistema
date_default_timezone_set('America/Guatemala');
$fechaactual = getdate();

$fechaSistema = date("d/m/Y");
$horaSistema = date("H : i : s");


$q1 = ("SELECT * FROM preguntas where  idPrueba=:idPrueba");
$datosPrueba=$dbConn->prepare($q1);
$datosPrueba->bindParam(':idPrueba',$_POST['idPrueba'], PDO::PARAM_STR); 
$datosPrueba->execute();





while($row1=$datosPrueba->fetch(PDO::FETCH_ASSOC)){	


if(@$_POST['preg'.@$row1['idPregunta']]==$row1['respuesta']){

	@$totalRespuesta+=@$row1['punteo'];
	//con esto actualizamos con el punteo que saco el alumno segun las respuestas, fecha y hora en la que se realizo la misma
		
	
}
	$q1 = $dbConn->prepare("UPDATE actividadPrueba SET punteoRespuestas=:punteoRespuestas, fechaTerminado=:fechaTerminado,horaTerminado=:horaTerminado  WHERE idPrueba=:idPrueba");
			$q1->bindParam(':punteoRespuestas', $totalRespuesta, PDO::PARAM_INT);
			$q1->bindParam(':fechaTerminado',$fechaSistema , PDO::PARAM_STR);
			$q1->bindParam(':horaTerminado',$horaSistema, PDO::PARAM_STR);
			$q1->bindParam(':idPrueba',$_POST['idPrueba'], PDO::PARAM_INT);
			$q1->execute();	

}


$q2 = ("SELECT * FROM actividadPrueba where  idPrueba=:idPrueba");
$datosActividad=$dbConn->prepare($q2);
$datosActividad->bindParam(':idPrueba',$_POST['idPrueba'], PDO::PARAM_INT); 
$datosActividad->execute();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Bienvenido <?php echo $_SESSION['nombre'] ?></title>
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
	<script type="text/javascript" src="../../js/bootstrap.js"></script>
	<script type="text/javascript" src="../../js/jquery-3.2.1.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<link rel="stylesheet" type="text/css" href="../../css/estatico.css">

	<link rel="stylesheet" type="text/css" href="css/reportes.css">

	<script type="text/javascript" src="js/rellenoFiltro.js"></script>

	 <!--------------------------------------- COMPONENTES PARA GRAFICOS ---------------------------------------->
	<script src="../../basicos1/code/highcharts.js"></script>
	<!--------------------------------------- COMPONENTES PARA GRAFICOS ---------------------------------------->
</head>
<body >
	<div class="row">
		  		
<?php include("../../static/lat-izquierdo.php");  ?>		



 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->		 
		  
		  <div class="col-md-10 contenedorLatDerecho" >

		  	<?php include("../../static/banner.php"); ?>

		  		<div class="row sectionDinamico" style="margin-top: -100px;"><br>
		  			<h5 class="text-center col-md-12" style="margin-top: 50px;"></h5>

		  			<div class="col-md-10 alert alert-success" style="margin-left:60px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: 0px;">
		  			<h1 class="text-center">La tarea se creo de manera correcta</h1>	<br><br>
		  			<p><strong>Nombre de la Prueba:</strong> </p>
		  			<p><strong>Fecha y hora:</strong></p>
		  		
		  			<p><strong>Nota de la Prueba: </strong> </p>
		  			
		  			<p><strong>Nota Obtenida: </strong></p>
		  			<a  href="<?php echo '../classRoom.php?nombreGrado='.$_POST['nombreGrado'].'&seccion='.$_POST['seccion'].'&nivel='.$_POST['nivel'].'&grado='.$_POST['grado'].'&idCurso='.$_POST['idCurso'].'&portada='.$_POST['portada'].'&nombreCurso='.$_POST['nombreCurso']; ?>" class="btn btn-warning" style="margin-left: 0px;">Volver al curso</a>	  				
		  								
						
			 		</div>

				</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>