<?php

session_start();
//variables que me permite mantener classroom con los datos pertenecientes al curso.
$_GET['idCurso'];
$_GET['nombreCurso'];
$_GET['idLeccion'];
@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['portada'];



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
		  			<h5 class="text-center col-md-12" style="margin-top: 50px;">Prueba En linea</h5>

		  			<div class="col-md-11" style="box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: -100px;">

		  				<form action="2crearPrueba.php" method="post"> 
		  					<h5 class="text-left col-md-12" style="margin-top: 50px;">Ingrese los datos para crear la Prueba</h5><br>
		  					<input class="form-control" type="text" value="" id="" name="nombrePrueba" placeholder="Ingrese el nombre de la prueba" required><br>	
		  					<input class="form-control col-md-6" type="number" value="" id="" name="numeroPreguntas" placeholder="Ingrese el numero de preguntas" required><br>	
		  						<select class="form-control col-md-6" name="tipoCuestionario" id="Nivel" required>
								          	<option value="">Elija el tipo de cuestionario</option>
								            <option value="1">Opcion Multiple</option>
								            <option value="2">Preguntas directas</option>
								            
					        	</select><br>
					        	<input class="form-control col-md-6" type="number"   name="punteoPrueba"  placeholder="Ingrese punteo" required><br>
							     <fieldset>
							        <p>La actividad almacenara el punteo en </p>
							        <label>
							            <input type="radio" name="almacenPunteo" value="1" checked> Examen
							        </label>
							        <label>
							            <input type="radio" name="almacenPunteo" value="2"> Zona
							        </label>
						   		 </fieldset> <br>


					        	<input class="form-control col-md-6" type="text" value="<?php echo $_GET['idCurso'] ?>"  name="idCurso" style="display: none">
					        	<input class="form-control col-md-6" type="text" value="<?php echo $_GET['nombreCurso'] ?>" id="" name="nombreCurso" style="display: none;">
					        	<input class="form-control col-md-6" type="text" value="<?php echo $_GET['idLeccion'] ?>" id="" name="idLeccion" style="display: none;"> 

					        	<input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">
									
									<input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
									<input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
									<input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
									<input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">



					        
					        <button type="reset" class="btn btn-secundary" style="cursor:pointer;">Limpiar</button>
					        <a href=" <?php echo '../classRoom.php?idCurso='.$_GET['idCurso'].'&nombreCurso='.$_GET['nombreCurso']; ?>" class="btn btn-warning" style="cursor:pointer;">volver al curso</a>
					        <input type="submit" name="enviar" class="btn btn-success" value="Siguente" style="cursor:pointer;">
		  				</form>

		  								
						
			 		</div>

		</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>