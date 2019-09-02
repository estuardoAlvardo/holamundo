<?php 
session_start();

require("../conection/conexion.php");

$_SESSION["nombre"];
$_SESSION["apellido"];
$_SESSION["correo"] ;
$_SESSION['idUsuario'];

@$_GET['nombreCurso'];
@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['idCurso'];
@$_GET['portada'];



// obtener todos datos de cursos
$q1 = ("SELECT * FROM cursos where  idCurso=:idCurso");
$datosCurso=$dbConn->prepare($q1);
$datosCurso->bindParam(':idCurso',$_GET['idCurso'], PDO::PARAM_STR); 
$datosCurso->execute();

// extraer nota zon y examen
$q3 = ("SELECT notaZona,notaExamen FROM cursos where  idCurso=:idCurso");
$notas=$dbConn->prepare($q3);
$notas->bindParam(':idCurso',$_GET['idCurso'], PDO::PARAM_STR); 
$notas->execute();


// obtener datos de de las lecciones

$q2 = ("SELECT * FROM leccion where  idCurso=:idCurso");
$datosLeccion=$dbConn->prepare($q2);
$datosLeccion->bindParam(':idCurso',$_GET['idCurso'], PDO::PARAM_STR); 
$datosLeccion->execute();


// obtenemos las pruebas 

$q4 = ("SELECT * FROM actividadprueba where  idLeccion=:idLeccion");
$actividadprueba=$dbConn->prepare($q4);

// obtenemos las tareas
/*
$q5 = ("SELECT * FROM actividadTarea where  idLeccion=:idLeccion");
$actividadTarea=$dbConn->prepare($q5);
*/

 ?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Crear Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/classRoom.css">
 
    <!-- librerías opcionales que activan el soporte de HTML5 para IE8 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
<body class="txt-fuente">
              <!--NAVEGACION CONTENIDO FIJO -->
              <?php include '../static/nav.php'; ?>
              <!-- //NAVEGACION CONTENIDO FIJO -->

              <!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
               <?php include '../static/lat-izquierdo.php';  $nivel=1; directoriosNiveles($nivel);?>
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

                                 </style>
 			<div class="col-md-8 col-xs-8 pag-center">
        <div class="row sectionDinamico">                        
            <div class="text-center col-md-11 cajaleccion" id="fondoModal">
              <div class="cajaPortadaData" >
                <div class="row">
                <?php while($row1=$datosCurso->fetch(PDO::FETCH_ASSOC)){                
                  if(empty($row1['portada'])){
                 ?> 
                <div class="portadaCurso col-md-6" style="height: 370px; background-image: linear-gradient(15deg, #13547a 0%, #80d0c7 100%);">                
                      <img src="../img/subirPortada.png" width="100" height="100" style="margin-left: -50px; margin-top: 40%; cursor: pointer; ">
                      <form action="subirImagen.php" method="post" enctype="multipart/form-data" accept="image-*">
                          <input type="file" name="portada" style="opacity:0;  margin-top: -16%; cursor: pointer; width: 100px; height: 100px; position: absolute; margin-left:110px;" required >
                          <input type="text" name="idDocente" value="<?php echo $_SESSION['idUsuario'];  ?>" style="display: none"> 
                          <input type="text" name="nombreCurso" value="<?php echo $_GET['nombreCurso'];  ?>" style="display: none">
                          <input type="text" name="idCurso" value="<?php echo $_GET['idCurso'];  ?>" style="display: none"><br><br><br><br>
                          <input type="submit" class="btn btn-success" value="Subir" style="margin-left:80%; cursor: pointer; ">
                       </form>                
                </div>
              <?php }
                if(!empty($row1['portada'])){ 
               ?>

               <div class="portadaCurso col-md-6" style="background-color: #ffffff; ">                
                  <img src="<?php echo $row1['portada'];  ?>" width="408" height="370" style="margin-left: -50px; margin-top: 30%; cursor: pointer; position:absolute; left:50px; top:-122px;">
                  <form action="subirImagen.php" method="post" enctype="multipart/form-data" accept="image/*">
                    <input  type="file" name="portada" style="opacity:0;  margin-top: 40%; cursor: pointer; width: 100px; height: 100px; position: absolute; margin-left: 100px;" required >
                    <input type="text" name="idDocente" value="<?php echo $_SESSION['idUsuario'];  ?>" style="display: none"> 
                    <input type="text" name="nombreCurso" value="<?php echo $_GET['nombreCurso'];  ?>" style="display: none">
                    <input type="text" name="idCurso" value="<?php echo $_GET['idCurso'];  ?>" style="display: none"><br><br><br><br>
                    <input type="submit" class="btn btn-success" value="Subir" style="margin-left:15%; cursor: pointer; margin-top:240px; position:absolute;">
                  </form>                
                </div>
                <?php } }  ?>                
        
                <div class="datosCurso  alert-info col-md-6" style="padding-left: 10px;" >
                  <h5 class="alert alert-success">Datos del Docente</h5>                  
                  <h5 class="text-left"><strong>Nombre Docente:</strong> <?php echo $_SESSION['nombre'].' '.$_SESSION['apellido']; ?></h5>
                  <h5 class="text-left"><strong>Correo:</strong> <?php echo $_SESSION['correo']; ?></h5>
                  <h5 class="alert alert-success">Datos del Curso</h5>
                  <h5 class="text-left"><strong>Nombre Curso:</strong> <?php echo $_GET['nombreCurso']; ?></h5>
                  <div class="container col-md-12">
                          <table class="table table-hover">
                            <thead>
                              <tr>
                                <th>Nota Asignada</th>
                                <th>Promedio hasta la fecha</th>                                
                              </tr>
                            </thead>                        
                            <tbody>
                              <tr>
                                <td>Zona</td>
                                <?php while($row3=$notas->fetch(PDO::FETCH_ASSOC)){?>
                                <td><?php echo $row3['notaZona']; ?></td>
                                
                                <td>0</td>
                              </tr>
                              <tr>
                                <td>Examen</td>
                                <td><?php echo $row3['notaExamen']; ?></td>
                                <td>0</td>
                                <?php } ?>
                              </tr>
                             </tbody>
                         
                          </table>
                    </div>
                  </div>
              </div>
           </div>


            <div class=" col-md-1" style="margin-top: 50px;">
              <img  class="plus" src="../img/plus.png" width="60" height="60" style="" title="Crear Una lección" onclick="crearLeccion()"> 
              <br>
              <br>
              <a href="../cursosDocente/misCursos.php" class="btn btn-warning">Volver al curso</a>          
            </div><br><br>

        <?php while($row2=$datosLeccion->fetch(PDO::FETCH_ASSOC)){?>
         <div class="container" id="redireccionDefault" style="margin-top: 300px; margin-bottom: -330px;">
            <div class="leccion col-md-8">
              <div class="text-right"><?php  echo $row2['nombreLeccion']; ?></div>
                <hr style="border: 1px solid rgb(30,48,83);">
                <div class="row">
                  <div class="col-md-3"><button class="btn btn-primary aqui" id="<?php echo $row2['idLeccion']; ?>" onclick="mostrarVentana(this.id)" value="hola">Agregar Actividad</button>
                  </div>
                  <div class="col-md-3"><button class="btn btn-primary aqui" id="<?php echo $row2['idLeccion']; ?>" onclick="mostrarVentana3(this.id)" value="hola">Agregar Recurso</button>
                  </div>
                </div>
          <div>

            <?php
                $actividadprueba->bindParam(':idLeccion',$row2['idLeccion'], PDO::PARAM_STR); 
                $actividadprueba->execute();
                while($row4=$actividadprueba->fetch(PDO::FETCH_ASSOC)){
             ?>

            <div class="row" style="margin-top: 20px;">            
            <img src="img/quiz.png" width="50" height="50" style="margin-left: -650px;">
            <p style="margin-top: -35px; margin-left: 10px;"><a href="<?php if($row4['fechaTerminado']!=null){ echo ""; }else{ echo 'activityEvaluacion/5opcionMultipleResponder.php?idPrueba='.$row4['idPrueba'].'&nombrePrueba='.$row4['nombrePrueba'].'&nombreGrado='.$_GET['nombreGrado'].'&seccion='.$_GET['seccion'].'&nivel='.$_GET['nivel'].'&grado='.$_GET['grado'].'&idCurso='.$_GET['idCurso'].'&portada='.$_GET['portada'].'&nombreCurso='.$_GET['nombreCurso']; } ?>"  > <?php echo $row4['nombrePrueba']; ?></a> |  Nota asignada: <?php echo $row4['punteoPrueba']; ?> | Nota Obtenida:  <?php echo $row4['punteoRespuestas']; ?>  | Estado: <strong><?php if($row4['fechaTerminado']!=null){echo "Finalizado"; }else{ ?></strong><strong><?php echo "Sin Responder"; }?></strong><p>             
            </div><hr> 
            <?php } ?>

            </div>


        </div>
        </div>  
        <br><br><br>
      <?php } ?>


     </div>

  </div>

    <div id="miVentana"  class="miVentanaCss" style="background-image: linear-gradient(to top, #f43b47 0%, #453a94 100%);">
            <div class="row">
              <div class="col-md-11 text-left" style=" margin-left: 3%; padding-bottom:5px; ">
                <h5 class="text-center">Actividades</h5><br>      

               <div class="col-md-3 text-center">
                <p>Conocimiento</p>  


                <form action="activityPrueba/1pruebas.php" name="1" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Recuedo y Reconozco" style="margin-bottom: 10px;" class="btn btn-info">
                </form>

                </div>
                <div class="col-md-3 text-center">
                               
                <p>Comprensión</p>
                <form action="activityPrueba/1pruebas.php" name="2" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Interpreto, Asocio" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                </div>
                <div class="col-md-3 text-center">               
                <p>Analisis</p>
                <form action="activityPrueba/1pruebas.php" name="3" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Diferencio, Relaciono" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                </div>
                <div class="col-md-3 text-center">               
                <p>Utilización</p>
                <form action="activityPrueba/1pruebas.php" name="4" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Transfiero, utilizo Datos" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                </div>
                <div class="col-md-3 text-center">               
                <p>Metacognición</p>
                <form action="activityPrueba/1pruebas.php" name="5" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Reorganizo, Reescribo" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                </div> 
                <div class="col-md-3 text-center">               
                <p>Evaluaciones Colectivas (objetivas)</p>
                <form action="activityPrueba/1pruebas.php" name="6" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Falso y Verdadero" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Opcion Multiple" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="completación" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Alternativas" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Ordenamiento" style="margin-bottom: 10px;" class="btn btn-info">
                  <input type="submit" name="enviar" value="Multiítem de base común" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                </div> 
                <div class="col-md-3 text-center">
                 <p>Evaluaciones Colectivas (de ensayo)</p> 
                    <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Redacciones" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Problemas" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Estudio de casos" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Comentario de textos" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>


                </div>
                 <div class="col-md-2 text-center">
                 <p>Evaluaciones individuales</p> 
                    <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Exposicion  Oral" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Cuestionario Oral" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Entrevista guiada" style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>
                 <form action="activityEvaluacion/1opcionMultiple.php" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" title="Obserbacion de una actuaión o producto" value="Obserbacion de una actuaión..." style="margin-bottom: 10px;" class="btn btn-info">                  
                </form>


                </div>

              </div>
            </div>
            <br>
          
            <button class="btn btn-warning" onclick="ocultarVentana()" style="margin-left:85%; margin-top: -50px;">cerrar</button>
        </div>

          <div id="crearLeccion"  class="miVentanaCss">
            <div class="row">
              <div class="col-md-11 text-left" style=" margin-left: 3%; padding-bottom:5px; ">
                <h5 class="text-center">Crear Una Lección</h5>
                <form method="post" action="crearLeccion.php">
                  <input class="form-control" type="text"  name="nombreLeccion" placeholder="Ingrese el nombre de la lección" required><br>
                  <input class="form-control" type="text" value="<?php echo @$_GET['idCurso']; ?>" id="" name="idCurso" placeholder="Ingrese el nombre de la lección" style="display:none;"><br>
                  <input class="form-control" type="text" value="<?php echo @$_GET['nombreCurso']; ?>" id="" name="nombreCurso" placeholder="Ingrese el nombre de la lección" style="display:none;"><br>
                 <input type="submit" name="enviar" value="Crear" class="btn btn-warning"> 
                  <button class="btn btn-secundary" type="reset">Limpiar</button>
                </form>
              </div>
            </div>
            <br>  
                   
            <button class="btn btn-danger"  onclick="ocultarVentana3()" style="margin-left:85%; margin-top:50px;">cerrar</button>           
        </div>  

          <div id="recursos"  class="miVentanaCss" style="background-image: linear-gradient(to top, #f43b47 0%, #453a94 100%);" >
            <div class="row">
              <div class="col-md-11 text-left" style=" margin-left: 3%; padding-bottom:5px; ">
                <h5 class="text-center">Subir mis recursos</h5>
                <form action="recursoMaterialApoyo/1materialApoyo.php" class="col-md-5" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>" class="col-md-3" style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Material de Apooyo (pdf, word, excel otros)" style="margin-bottom: 10px;" class="btn btn-info">
                </form>
                <form action="recursoYoutube/1materialYoutube.php" class="col-md-3" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Videos de Youtube" style="margin-bottom: 10px;" class="btn btn-info">
                </form>

                <form action="recursoMisVideos/1misVideos.php" class="col-md-3" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Subir mis Videos o Audio" style="margin-bottom: 10px;" class="btn btn-info">
                </form>                        
              </div>
              <div class="row">
                <h5 class="text-center col-md-12">Usar Banco de recursos de atomo</h5>
                <form action="recursoMisVideos/1misVideos.php" class="col-md-3" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Banco de Videos" style="margin-bottom: 10px; margin-left: 50px;" class="btn btn-success">
                </form>
                <form action="bankoHojas/1hojasTrabajo.php" class="col-md-2" name="crearPrueba" method="get">
                  <input type="text" name="idCurso" value="<?php echo @$_GET['idCurso'];  ?>" style="display: none;">
                  <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                  <input type="text" name="idLeccion" id="idLeccion" style="display: none;">
                  <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">              
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                  <input type="submit" name="enviar" value="Banco de Hojas de Trabajo" style="margin-bottom: 10px; margin-left: 50px;" class="btn btn-success">

                </form>
              </div>
            </div>
            <br>            
            <button class="btn btn-warning" onclick="ocultarVentana4()" style="margin-left:85%; margin-top: -50px;">cerrar</button>          
        </div>          
    </div>


<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php'; ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>


<script type="text/javascript">
  
  function mostrarVentana(clicked_id)
  {
      var body =  document.getElementById('fondoModal');
        var ventana = document.getElementById('miVentana');
        ventana.style.marginTop = "50px";
        ventana.style.width="800px";
        ventana.style.left = ((document.body.clientWidth-800) / 2) +  "px";
        ventana.style.display = 'block';
        body.style.filter="blur(10px)";        
        var idLeccionEn =clicked_id;
        //alert(idLeccionEn); // esto es para ver que idLeccion estamos enviando
        //document.getElementById("escribir").innerHTML  = idLeccionEn; //con esto escribimos en un p
        document.crearPrueba.idLeccion.value = idLeccionEn ;
       
  }



function ocultarVentana()
{
  var body =  document.getElementById('fondoModal');
    var ventana = document.getElementById('miVentana');

    ventana.style.display = 'none';
    body.style.filter="blur(0px)";
}

  function crearLeccion()
{
  var body =  document.getElementById('fondoModal');
    var ventana = document.getElementById('crearLeccion');
    ventana.style.marginTop = "100px";
    ventana.style.left = ((document.body.clientWidth-350) / 2) +  "px";
    ventana.style.display = 'block';
    body.style.filter="blur(10px)";
}


function ocultarVentana3()
{
  var body =  document.getElementById('fondoModal');
    var ventana = document.getElementById('crearLeccion');
    ventana.style.display = 'none';
    body.style.filter="blur(0px)";
}

    function mostrarVentana3(clicked_id)
  {
      var body =  document.getElementById('fondoModal');
        var ventana = document.getElementById('recursos');
        ventana.style.marginTop = "50px";
        ventana.style.width="900px";
        ventana.style.left = ((document.body.clientWidth-900) / 2) +  "px";
        ventana.style.display = 'block';
        body.style.filter="blur(10px)";        
        var idLeccionEn =clicked_id;
        //alert(idLeccionEn); // esto es para ver que idLeccion estamos enviando
        //document.getElementById("escribir").innerHTML  = idLeccionEn; //con esto escribimos en un p
        document.crearPrueba.idLeccion.value = idLeccionEn ;
       
  }
function ocultarVentana4()
{
  var body =  document.getElementById('fondoModal');
    var ventana = document.getElementById('recursos');
   
    ventana.style.display = 'none';
    body.style.filter="blur(0px)";
}




</script>
  </body>
</html>