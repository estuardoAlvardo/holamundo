<?php

session_start();

require("../../conection/conexion.php");


//variables que me permite mantener classroom con los datos pertenecientes al curso.

$_GET['idCurso'];
$_GET['nombreCurso'];
$_GET['idLeccion'];
$_GET['nombrePrueba'];


@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['portada'];


$q1 = ("SELECT * from actividadprueba where nombrePrueba=:nombrePrueba and idLeccion=:idLeccion");
		$preguntas = $dbConn->prepare($q1);
		$preguntas->bindParam(':nombrePrueba',$_GET['nombrePrueba'], PDO::PARAM_STR);
		$preguntas->bindParam(':idLeccion',$_GET['idLeccion'], PDO::PARAM_INT);
		$preguntas->execute();


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


	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body >
	<div class="row">
		  		
<?php include("../../static/lat-izquierdo.php");  ?>		

<style type="text/css">
	.form-inline .form-group { margin-right:10px; }
.well-primary {
color: rgb(255, 255, 255);
background-color: rgb(66, 139, 202);
border-color: rgb(53, 126, 189);
}
.glyphicon { margin-right:5px; }
</style>

 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->		 
		  
		  <div class="col-md-10 contenedorLatDerecho" >

		  	<?php include("../../static/banner.php"); ?>

		  		<div class="row sectionDinamico"><br>
		  			<h5 class="text-center col-md-12" style="margin-top: 50px;"><?php echo $_GET['nombrePrueba']; ?></h5>

		  			<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel-group" id="accordion">
                <form action="4guardarPrueba.php" method="post">
                	<?php  while($row1=$preguntas->fetch(PDO::FETCH_ASSOC)){  

                		for($contador=1; $contador<=$row1['numeroPreguntas']; $contador++){

                			$pregunta

                	 ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="<?php echo '#preg'.$contador; ?>"><span class="glyphicon glyphicon-th-list">
                            </span>Pregunta <?php  echo $contador; ?> </a>
                        </h4>
                    </div>
                    <div id="<?php echo 'preg'.$contador; ?>" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idCurso" value="<?php echo $_GET['idCurso']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>

                                	<div class="form-group">
                                        <input type="text" class="form-control" name="numeroPreguntas" value="<?php echo $row1['numeroPreguntas']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idLeccion" value="<?php echo $row1['idLeccion']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="punteoPrueba" value="<?php echo $row1['punteoPrueba']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idPrueba" value="<?php echo $row1['idPrueba']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="numeroPreguntas" value="<?php echo $row1['numeroPreguntas']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>


                                    <div class="form-group">
                                    	<textarea type="text" class="form-control" name="<?php echo 'pregunta'.$contador;?>" placeholder="Ingrese la pregunta" required /></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="<?php echo 'respuestaPregunta'.$contador;?>" placeholder="Ingrese el numero de la opcion, de la respuesta correcta"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option1';?>" placeholder="Opcion 1"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="<?php echo 'pregunta'.$contador.'Option2';?>" placeholder="Opcion 2"  required />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option3';?>" placeholder="Opcion 3" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option4';?>" placeholder="Opcion 4"  />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="<?php echo 'pregunta'.$contador.'Option5';?>" placeholder="Opcion 5"  />
                                    </div>

                                    <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                                    <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">
                                    
                                    <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                                    <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                                    <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                                    <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
				<?php  }  } ?>
                <div class="row">
                                <div class="col-md-12">
                                    <div class="well well-sm well-default">
                                        <form class="form form-inline " role="form">
                                        <div class="form-group">
                                            <input type="submit" value="Siguiente" class="btn btn-success btn-sm"> 
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
				</form>




            </div>
        </div>
    </div>
</div>




		</div>	

		  		



		
		  		
 <!--------------------------------------- CENTRO DEL LA PAGINA ---------------------------------------->

</div>		  		


	

		 
		
</body>
</html>