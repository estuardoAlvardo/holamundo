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
        <h5 class="text-center col-md-12" style="margin-top: 50px;"></h5>

            <div class="col-md-10 alert alert-success text-left" style="margin-left:60px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); margin-top: 0px;">
            <h1 class="text-center">La prueba se  envio de manera correcta :)</h1> <br><br>
            <p><strong>Nombre de la Prueba:</strong> <?php echo @$_POST['nombrePrueba']; ?></p>
            <p><strong>Fecha y hora:</strong> <?php echo $fechaSistema." | ".$horaSistema ?></p>
            <?php while($row2=$datosActividad->fetch(PDO::FETCH_ASSOC)){ ?>
            <p><strong>Nota de la Prueba: </strong> <?php echo $row2['punteoPrueba']; ?></p>
            <?php } ?>
            <p><strong>Nota Obtenida: </strong><?php if(empty(@$totalRespuesta)){ @$totalRespuesta=0; } echo @$totalRespuesta; ?></p><br><br>
            <a  href="<?php echo '../classRoom.php?nombreGrado='.$_POST['nombreGrado'].'&seccion='.$_POST['seccion'].'&nivel='.$_POST['nivel'].'&grado='.$_POST['grado'].'&idCurso='.$_POST['idCurso'].'&portada='.$_POST['portada'].'&nombreCurso='.$_POST['nombreCurso']; ?>" class="btn btn-warning" style="margin-left: 0px;">Volver al curso</a>           
                      
            
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