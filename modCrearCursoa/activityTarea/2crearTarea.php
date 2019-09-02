<?php
session_start();
require("../../conection/conexion.php");
//variables que me permite mantener classroom con los datos pertenecientes al curso.
$_POST['idCurso'];
$_POST['nombreCurso'];

//VARIABLES PARA CREAR LA PRUEBA
$_POST['idLeccion'];
$_POST['nombreTarea'];
$_POST['instrucciones'];
$_POST['punteoTarea'];
$_POST['almacenPunteo'];


@$_POST['nombreGrado'];
@$_POST['seccion'];
@$_POST['nivel'];
@$_POST['grado'];
@$_POST['portada'];



$carpeta = 'directorioTarea/'.$_POST['idLeccion'];

if (!file_exists($carpeta)) {
    mkdir($carpeta, 0777, true);

}

$nombre= $_FILES['tarea']['name'];
$ruta=$_FILES['tarea']['tmp_name'];
$destino= $carpeta."/".$nombre;


copy($ruta,$destino);


$insertarTarea = "INSERT INTO actividadTarea(nombreTarea,instrucciones,archivos,punteoTarea,tipoPunteo,idLeccion) VALUES(:nombreTarea, :instrucciones,:archivos, :punteoTarea,:tipoPunteo,:idLeccion)";


$insertarTarea = $dbConn->prepare($insertarTarea);
                
        $insertarTarea->bindparam(':nombreTarea', $_POST['nombreTarea']);
        $insertarTarea->bindparam(':instrucciones', $_POST['instrucciones']);
        $insertarTarea->bindparam(':archivos', $destino);
        $insertarTarea->bindparam(':punteoTarea', $_POST['punteoTarea']);
        $insertarTarea->bindparam(':tipoPunteo', $_POST['almacenPunteo']);  //1 = examen 2= zona
        $insertarTarea->bindparam(':idLeccion', $_POST['idLeccion']);
        $insertarTarea->execute();



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
		  			<h1 class="text-center">La tarea se creo de manera correcta :)</h1>	<br><br>
		  			<p><strong>Nombre de la tarea: </strong><?php echo $_POST['nombreTarea']; ?> </p>
		  			<p><strong>Nota de la tarea: </strong><?php echo $_POST['punteoTarea']; ?> </p>
		  		<a  href="<?php echo '../classRoom.php?nombreGrado='.$_POST['nombreGrado'].'&seccion='.$_POST['seccion'].'&nivel='.$_POST['nivel'].'&grado='.$_POST['grado'].'&idCurso='.$_POST['idCurso'].'&portada='.$_POST['portada'].'&nombreCurso='.$_POST['nombreCurso']; ?>" class="btn btn-warning" style="margin-left: 0px;">Volver al curso</a>	



		  								
						
			 		</div>

				</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>