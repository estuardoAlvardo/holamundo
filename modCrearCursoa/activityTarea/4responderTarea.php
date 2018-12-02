<?php

session_start();
//variables que me permite mantener classroom con los datos pertenecientes al curso.
require("../../conection/conexion.php");


@$_GET['idPrueba'];
@$_GET['nombrePrueba'];
@$_GET['numeroPreguntas'];


@$_GET['nombreCurso'];
@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['idCurso'];
@$_GET['portada'];


@$_GET['idTarea'];
@$_GET['nombreTarea'];
@$_GET['instrucciones'];
@$_GET['nombreArchivo'];




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
	<script type="text/javascript" src="angular.js"></script>
</head>
<body >
	<div class="row">
		  		
<?php include("../../static/lat-izquierdo.php");  ?>		



 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->		 
		  
		  <div class="col-md-10 contenedorLatDerecho" >

		  	<?php include("../../static/banner.php"); ?>

		  		<div class="row sectionDinamico" style="margin-top: -100px;"><br>
		  			<h5 class="text-center col-md-12" style="margin-top: 50px;"></h5>

		  			<div class="col-md-10" style="margin-left:60px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: 0px;">
		  			<h1 class="text-center"><?php echo $_GET['nombreTarea']; ?></h1>	<br><br>
		  			<p><strong>Instrucciones: </strong><?php echo $_GET['instrucciones'];  ?></p>
		  			<p><strong>Puntos:</strong> <?php echo $_GET['punteoTarea'];  ?> </p>
		  			<p><strong>Archivo Adjunto por el docente:</strong> <?php echo @$_GET['nombreArchivo']; ?> <button class="btn btn-success"> Descargar</button></p><br><br>
		  			

		  			
		  		
		  			<a  href="<?php echo '../classRoom.php?nombreGrado='.$_POST['nombreGrado'].'&seccion='.$_POST['seccion'].'&nivel='.$_POST['nivel'].'&grado='.$_POST['grado'].'&idCurso='.$_POST['idCurso'].'&portada='.$_POST['portada'].'&nombreCurso='.$_POST['nombreCurso']; ?>" class="btn btn-warning" style="margin-left: 0px;">Volver al curso</a>	  				
		  								
						
			 		</div>

				</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>