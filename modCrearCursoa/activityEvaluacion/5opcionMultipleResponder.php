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

<style type="text/css">
  .form-inline .form-group { margin-right:10px; }
.well-primary {
color: rgb(255, 255, 255);
background-color: rgb(66, 139, 202);
border-color: rgb(53, 126, 189);
}
.glyphicon { margin-right:100%; }
</style>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Crear Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- librerías opcionales que activan el soporte de HTML5 para IE8 -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../../static/nav.php'; ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../../static/lat-izquierdo.php'; ?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->
 <style type="text/css">
   
   .cursoN{
 background-size: 160px;

 background-repeat: no-repeat;
  height: 178px;
  margin-left: 50px;
  border-radius: 15px;
   -webkit-transition: .2s ease-in-out;
    -moz-transition: .2s ease-in-out;
    -o-transition:.2s ease-in-out;
    transition: .2s ease-in-out;
  margin-bottom: 40px;

}

.cursoN:hover{

  -webkit-box-shadow: 0px 3px 30px 0px rgba(0,0,0,0.75);
}


.pieCurso{ 
  width:181px;
  height:56px;
  margin-left: -15px;
  margin-top: 123px;
  padding-top: 20px;
  padding-left: 5px;
  border-radius: 0px 0px 15px 15px;
   -webkit-transition: .2s ease-in-out;
    -moz-transition: .2s ease-in-out;
    -o-transition:.2s ease-in-out;
    transition: .2s ease-in-out;
    overflow: hidden;
    background-color: rgba(10,38,64,0.5);
    color: white;
    
}
.pieCurso:hover{
background-color: rgba(10,38,64,0.7);
height:178px;
margin-top: 0px;
border-radius:15px;
color:white;
padding-top: -13px;
width: 181px;
}

.card-1 {
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  margin-left:30px; 
  padding-top: 10px; 
  padding-bottom: 10px;  
  padding-left: 40px; 
  padding-right: 20px; 
  cursor: pointer; 
  border-radius: 10px; 
  color: #ffff; 
  background-color: #3498db;
}

.card-1:hover {
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);

}
#radioBut{
    position:absolute; margin-left: 30px; width:40px; height: 20px; margin-top: 10px;

}
 </style>
    <div class="col-md-8 col-xs-8 pag-center">        
        <h4 class="text-center col-md-12" style="margin-top: 50px;"><?php echo $_GET['nombrePrueba']; ?></h4>
                    <div class="col-md-10" style="margin-left:60px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: 0px;">

                        <form method="post" action="6opcionMultipleSolucionario.php">
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
                            <div style="background-color: rgb(54, 171, 203); border-radius: 10px;">
                                    
                                    <h3 class="text-center" style="color: white;"><?php echo $row1['pregunta']; ?></h3>
                                     <input type="text" name="idPregunta" value="<?php echo $row1['idPregunta']; ?>" style="display: none;">
                                    <input type="text" name="punteo" value="<?php echo $row1['punteo']; ?>" style="display: none;">
                                    <input type="text" name="respuesta" value="<?php echo $row1['respuesta']; ?>" style="display: none;">
                                    
                                    <fieldset class="text-left">
                                        <p style="color: white; margin-left: 20px;">Selecione una:</p>
                                        <?php for($i=1; $i<=5; $i++){
                                            if(!empty($row1['opcion'.$i])){
                                         ?>                                     
                                        <label>
                                            <input id="radioBut" type="radio"  name="<?php echo 'preg'.$row1['idPregunta']; ?>" value="<?php echo $i; ?>" required style=""><label  class="card card-1" style=" "> <?php echo $row1['opcion'.$i]; ?></label>               


                                        </label><br>



                                                                        
                                       <?php } } ?>                                        
                                     </fieldset>                            
                            </div><br>
                            <?php } ?>
                            <input type="submit" name="enviar" value="Terminar Prueba" class="btn btn-warning"><br><br>                    
                        </form>                    
                    </div>                
    </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../../static/lat-derecho.php'; ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../../js/bootstrap.min.js"></script>

  </body>
</html>