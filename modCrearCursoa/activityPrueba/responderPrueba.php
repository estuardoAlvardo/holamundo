<?php

session_start();
//variables que me permite mantener classroom con los datos pertenecientes al curso.
require("../../conection/conexion.php");


$_GET['idPrueba'];
$_GET['nombrePrueba'];

@$_GET['nombreCurso'];
@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['idCurso'];
@$_GET['portada'];

//consulta que me trae la informacion de las preguntas a mostrar
$q1 = ("SELECT * FROM preguntas where  idPrueba=:idPrueba");
$datosPrueba=$dbConn->prepare($q1);
$datosPrueba->bindParam(':idPrueba',$_GET['idPrueba'], PDO::PARAM_STR); 
$datosPrueba->execute();
$numeroPreguntas=$datosPrueba->rowCount();


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

		  		<div class="row sectionDinamico"><br>
		  			<h5 class="text-center col-md-12" style="margin-top: 50px;"><?php echo $_GET['nombrePrueba']; ?></h5>

		  			<div class="col-md-10" style="margin-left:60px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: 0px;">

		  				<form method="post" action="solucionario.php">
							<input type="text-center" name="numeroPreguntas" value="<?php echo $numeroPreguntas; ?>" style="display: none;">
							<input type="text-center" name="nombreCurso" value="<?php echo @$_GET['nombreCurso']; ?>" style="display: none;">
							<input type="text-center" name="nombreGrado" value="<?php echo @$_GET['nombreGrado']; ?>" style="display: none;">
							<input type="text-center" name="seccion" value="<?php echo @$_GET['seccion']; ?>" style="display: none;">
							<input type="text-center" name="nivel" value="<?php echo @$_GET['nivel']; ?>" style="display: none;">
							<input type="text-center" name="grado" value="<?php echo @$_GET['grado']; ?>" style="display: none;"> 
							<input type="text-center" name="idCurso" value="<?php echo @$_GET['idCurso']; ?>" style="display: none;">
							<input type="text-center" name="portada" value="<?php echo @$_GET['portada']; ?>" style="display: none;">
							<input type="text-center" name="nombrePrueba" value="<?php echo @$_GET['nombrePrueba']; ?>" style="display: none;">

							<input type="text-center" name="idPrueba" value="<?php echo @$_GET['idPrueba']; ?>" style="display: none;">

		  					<br>
		  					<?php while($row1=$datosPrueba->fetch(PDO::FETCH_ASSOC)){							
									
								 ?>
		  					<div class="alert alert-info">
		  							
		  							<h5 class="text-center"><?php echo $row1['pregunta']; ?></h5>
		  							 <input type="text" name="idPregunta" value="<?php echo $row1['idPregunta']; ?>" style="display: none;">
								    <input type="text" name="punteo" value="<?php echo $row1['punteo']; ?>" style="display: none;">
								    <input type="text" name="respuesta" value="<?php echo $row1['respuesta']; ?>" style="display: none;">
		  							
		  							<fieldset>
								        <p>Selecione una</p>
								        <?php for($i=1; $i<=5; $i++){
								        	if(!empty($row1['opcion'.$i])){
								         ?>								        
								        <label>
								            <input type="radio" name="<?php echo 'preg'.$row1['idPregunta']; ?>" value="<?php echo $i; ?>" required> <?php echo $row1['opcion'.$i]; ?>

								        </label> <br>							       
								       <?php } } ?>
								        
								     </fieldset>					   
		  					
		  					</div>
		  					<?php } ?>  

		  					<input type="submit" name="enviar" value="Terminar Prueba" class="btn btn-warning"><br><br>
		  					
		  					
		  				</form>

		  				
		  								
						
			 		</div>

				</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>