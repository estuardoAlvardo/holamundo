<?php 
session_start();
//curso 1

require("../conection/conexion.php");

$_SESSION['idUsuario'];



//$sql1 = ("SELECT * FROM registrocl2p2 where idIntento=:idIntento");
//$obtenerMatriz=$dbConn->prepare($sql1);
//$obtenerMatriz->bindParam(':idIntento', $_GET['idIntento'], PDO::PARAM_INT); 
//$obtenerMatriz->execute();

//variables de niveles
$nivelPrimaria=1;
$nivelBasico=2;
$nivelDiver=3;

//Buscar todos los cursos de este usuario primaria

$q1 = ("SELECT * FROM cursos where idDocente=:idUsuario and nivel=:nivel");
$cursosPrimaria=$dbConn->prepare($q1);
$cursosPrimaria->bindParam(':idUsuario',$_SESSION['idUsuario'], PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':nivel',$nivelPrimaria, PDO::PARAM_INT); 
$cursosPrimaria->execute();

//Buscar todos los cursos de este usuario Basicos

$q2= ("SELECT * FROM cursos where idDocente=:idUsuario and nivel=:nivel");
$cursoBasico=$dbConn->prepare($q2);
$cursoBasico->bindParam(':idUsuario',$_SESSION['idUsuario'], PDO::PARAM_INT); 
$cursoBasico->bindParam(':nivel',$nivelBasico, PDO::PARAM_INT); 
$cursoBasico->execute();


//Buscar todos los cursos de este usuario Diversificado

$q3 = ("SELECT * FROM cursos where idDocente=:idUsuario and nivel=:nivel");
$cursoDiver=$dbConn->prepare($q3);
$cursoDiver->bindParam(':idUsuario',$_SESSION['idUsuario'], PDO::PARAM_INT); 
$cursoDiver->bindParam(':nivel',$nivelDiver, PDO::PARAM_INT); 
$cursoDiver->execute();



//funcion encargada de asignar imagen segun primer letra del nombre del curso

 ?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Mis Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- librerias para el funcionamiento del calendario -->
     <!-- JQUERY FUNCIONAL -->
    <script src='../js/jquery.min.js'></script>

 
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php'; $nivell=1; directorioNivelesNav($nivell); ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php';  $nivel=1; directoriosNiveles($nivel); ?>
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

.contenedorCurso{
  background-color:white;
    margin-top: 40px;
    height:200px;
    margin-left: 2%;
    -webkit-border-radius:5px;
    -o-border-radius:5px;
    -moz-border-radius:5px;
    padding: 0px;

 -webkit-box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  -moz-box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  -ms-box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  -o-box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);



  -webkit-transition: 0.3s ease;
  -moz-transition: 0.3s ease;
  -ms-transition: 0.3s ease;
  -o-transition: 0.3s ease;
  transition: 0.3s ease;
   
    
    }


.contenedorCurso:hover{
-moz-box-shadow: 0px 3px 8px #000000;
-webkit-box-shadow: 0px 3px 8px #000000;
box-shadow: 0px 3px 8px #000000;
 }
    
.pieCurso2{
  background-color: #36abcb;
  height: 60px;
  top: 116px;
padding-top: -30px;
  }
.pieCurso2 h4{
   text-align: center;
   color: white;
   padding-top: -5%;
   margin-top:120px;
}


 .contenedorCurso p{
  padding:3px;
  color: #36abcb;
 }



 </style>


 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center">Mis cursos</h3>
         </div>

 <!--        
           <a href="../smartbook1p/fichaMs.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive" style="">
                            <h4>Medio Social y Natural</h4>
                        </div>
                    </div>
                  </a>
             <a href="../smartbook1p/fichaFc.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Formación Ciudadana</h4>
                        </div>
                    </div>
                  </a>
                  <a href="../smartbook1p/fichaL1.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Comunicación y Lenguaje L1</h4>
                        </div>
                   </div>
                   </a>
                   <a href="../smartbook1p/fichaL2.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Idioma Maya L2</h4>
                        </div>
                   </div>
                  </a>
                   <a href="../smartbook1p/fichaL3.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Idioma Ingles L3</h4>
                        </div>
                   </div>
                   </a>

                    <a href="../smartbook1p/fichaMat.php" class="hoverE">
                   <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Matemáticas</h4>
                        </div>
                   </div>
                   </a>

                   <a href="../smartbook1p/fichaArt.php" class="hoverE">
                   <div class="col-md-2 contenedorCurso">
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Expresión Artistica</h4>
                        </div>
                   </div>
                 </a>
                 <a href="../smartbook1p/fichaFis.php" class="hoverE">
                    <div class="col-md-2 contenedorCurso">
                      <i class="flaticon-premium premium"></i>
                      <p class="text-right"><?php echo "Lecciones: ".$leccionRealizada."/".$leccionPendiente;  ?></p>
                            <div class="col-md-1 item2">
                               <div class="img-responsive sinfondo2"> 
                                  <img class="img-fondo2" src="img/iconos/clase1.png">
                                </div> 
                              </div>
                         <div class="pieCurso2 img-responsive">
                            <h4>Educación Física</h4>
                        </div>
                   </div>
                  </a> --->
                  <style type="text/css">
                    .cajaCards{
                      box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                      transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                      border-radius: 5px;
                      height: 100px; 
                      margin-bottom: 20px;
                      padding-top: 10px;
                      color: black;
                    }

                    .cajaCards:hover{
                       box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                       background: #642B73;  /* fallback for old browsers */
                      background: -webkit-linear-gradient(to right, #C6426E, #642B73);  /* Chrome 10-25, Safari 5.1-6 */
                      background: linear-gradient(to right, #C6426E, #642B73); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                      color: white;
                      font-size: bold;
                      padding-top: 10px;

                    }
                  </style>

                  <div class="col-md-11">
                     <h3 class="text-left" style="">Areas Principales | Según CNB</h3><hr>
                    <div class="row">
                      <div class="col-md-1"></div>
                      <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1
                      "><div class="col-md-2 cajaCards" style="">
                        <p>Comunicación Y  Lenguaje | L1</p>
                      </div></a>
                      <div class="col-md-1"></div>
                      <div class="col-md-2 cajaCards" style="">
                        <p>Comunicación Y  Lenguaje | L2</p>
                      </div>
                      <div class="col-md-1"></div>
                      <div class="col-md-2 cajaCards" style="">
                        <p>Comunicación Y  Lenguaje | L3</p>
                      </div>
                      <div class="col-md-1"></div>
                      <div class="col-md-2 cajaCards" style="">
                         <p>Medio Social y Natural</p>
                      </div>
                      <div class="col-md-1"></div>
                      <div class="col-md-2 cajaCards" style="">
                         <p>Formación Ciuadana</p>
                      </div>
                      <div class="col-md-1"></div>
                       <div class="col-md-2 cajaCards" style="">
                         <p>Matemáticas</p>                        
                      </div>
                       <div class="col-md-1"></div>
                       <a href="../atomLector/eleccionNivelprogramaLector.php?curso=7
                      ">
                       <div class="col-md-2 cajaCards" style="">
                         <p>Programa Lector</p>                        
                      </div></a>
                  </div>
                </div>


<div class="col-md-11"><br><br>
  <h3 class="text-left" style="">Otros Cursos</h3><hr>
</div>

           <div class="col-md-2 cursoN" style="background-image:url('../img/add.jpg'); margin-top: 70px;">

                          <a href="../modCrearCurso/addCurso.php" class="linkCurso">
                            <div class="pieCurso text-center" style="width: 148px;" >
                            <h5><strong>Nuevo Curso</strong></h5>
                            <br>
                            <p class="textGrado">Agregar Curso
                            </p>
                            <img src="../img/ir.png" width="50" height="50" style="margin-top: 10px;">


                          </div>                        
                          </a>
             </div><br>
            

          <div class="col-md-11">
              <h5 class="text-left" style="">Primaria</h5><hr>
                <div class="row">

                  <?php while(@$row21=$cursosPrimaria->fetch(PDO::FETCH_ASSOC)){ 

                    $row21['nombreCurso'];
                  

                  if(@$row21['grado']==1){
                    $nombreGrado="1ero";
                  }
                  if(@$row21['grado']==2){
                    $nombreGrado="2do";
                  } 
                  if(@$row21['grado']==3){
                    $nombreGrado="3ero";
                  } 
                  if(@$row21['grado']==4){
                    $nombreGrado="4to";
                  } 
                  if(@$row21['grado']==5){
                    $nombreGrado="5to";
                  }                       
                  if(@$row21['grado']==6){
                    $nombreGrado="6to";
                  } 


                    $letra=substr(@$row21['nombreCurso'],0,1);

                    if(strnatcasecmp($letra,'a')==0){
                      $img="background-image:url('../abecedario/a.jpg')";
                    }

                    if(strnatcasecmp($letra,'b')==0){
                      $img="background-image:url('../abecedario/b.jpg')";
                    }

                    if(strnatcasecmp($letra,'c')==0){
                      $img="background-image:url('../abecedario/c.jpg')";
                    }

                    if(strnatcasecmp($letra,'d')==0){
                      $img="background-image:url('../abecedario/d.jpg')";
                    }

                    if(strnatcasecmp($letra,'e')==0){
                      $img="background-image:url('../abecedario/e.jpg')";
                    }

                    if(strnatcasecmp($letra,'f')==0){
                      $img="background-image:url('../abecedario/f.jpg')";
                    }
                    if(strnatcasecmp($letra,'g')==0){
                      $img="background-image:url('../abecedario/g.jpg')";
                    }

                    if(strnatcasecmp($letra,'i')==0){
                      $img="background-image:url('../abecedario/i.jpg')";
                    }
                    if(strnatcasecmp($letra,'j')==0){
                      $img="background-image:url('../abecedario/j.jpg')";
                    }
                    if(strnatcasecmp($letra,'k')==0){
                      $img="background-image:url('../abecedario/k.jpg')";
                    }
                    if(strnatcasecmp($letra,'l')==0){
                      $img="background-image:url('../abecedario/l.jpg')";
                    }
                    if(strnatcasecmp($letra,'m')==0){
                      $img="background-image:url('../abecedario/m.jpg')";
                    }
                    if(strnatcasecmp($letra,'n')==0){
                      $img="background-image:url('../abecedario/n.jpg')";
                    }
                    if(strnatcasecmp($letra,'ñ')==0){
                      $img="background-image:url('../abecedario/ñ.jpg')";
                    }
                    if(strnatcasecmp($letra,'o')==0){
                      $img="background-image:url('../abecedario/o.jpg')";
                    }
                    if(strnatcasecmp($letra,'p')==0){
                      $img="background-image:url('../abecedario/p.jpg')";
                    }
                    if(strnatcasecmp($letra,'q')==0){
                      $img="background-image:url('../abecedario/q.jpg')";
                    }
                    if(strnatcasecmp($letra,'r')==0){
                      $img="background-image:url('../abecedario/r.jpg')";
                    }
                    if(strnatcasecmp($letra,'s')==0){
                      $img="background-image:url('../abecedario/s.jpg')";
                    }
                    if(strnatcasecmp($letra,'t')==0){
                      $img="background-image:url('../abecedario/t.jpg')";
                    }
                    if(strnatcasecmp($letra,'u')==0){
                      $img="background-image:url('../abecedario/u.jpg')";
                    }
                    if(strnatcasecmp($letra,'v')==0){
                      $img="background-image:url('../abecedario/v.jpg')";
                    }
                    if(strnatcasecmp($letra,'w')==0){
                      $img="background-image:url('../abecedario/w.jpg')";
                    }
                    if(strnatcasecmp($letra,'x')==0){
                      $img="background-image:url('../abecedario/x.jpg')";
                    }
                    if(strnatcasecmp($letra,'y')==0){
                      $img="background-image:url('../abecedario/y.jpg')";
                    }
                    if(strnatcasecmp($letra,'z')==0){
                      $img="background-image:url('../abecedario/z.jpg')";
                    }


                    ?>


                  <div class="col-md-2 cursoN" style="<?php echo $img; ?>">
                    <a href="<?php echo '../modCrearCurso/classRoom.php?nombreCurso='.@$row21['nombreCurso'].'&nombreGrado='.$nombreGrado.'&seccion='.@$row21['seccion'].'&idCurso='.@$row21['idCurso'].'&nivel='.@$row21['nivel'].'&grado='.@$row21['grado'].'&portada='.@$row21['portada']; ?>" class="linkCurso">
                      <div class="pieCurso text-center" style="width: 135px;">
                        <h5 style="margin-top: -10px;"><strong><?php echo @$row21['nombreCurso'] ?></strong></h5>
                        <br>
                        <p >Grado: <?php echo $nombreGrado; ?><br>
                             seccion: <?php echo @$row21['seccion']; ?>
                        </p>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                      </div>
                      
                        </a>
                </div>
                <?php } ?>
                   
                </div>
              </div>

              <div class="col-md-11">
              <h5 class="text-left" style="margin-top: 10px;">Basicos</h5><hr>
                <div class="row">
                  <?php while(@$row22=$cursoBasico->fetch(PDO::FETCH_ASSOC)){ 

                    @$row22['nombreCurso'];
                  

                  if(@$row22['grado']==1){
                    $nombreGrado="1ero <br>";
                  }
                  if(@$row22['grado']==2){
                    $nombreGrado="2do <br>";
                  } 
                  if(@$row22['grado']==3){
                    $nombreGrado="3ero <br>";
                  } 
                    


                    $letra=substr(@$row22['nombreCurso'],0,1);

                    if(strnatcasecmp($letra,'a')==0){
                      $img="background-image:url('../abecedario/a.jpg')";
                    }

                    if(strnatcasecmp($letra,'b')==0){
                      $img="background-image:url('../abecedario/b.jpg')";
                    }

                    if(strnatcasecmp($letra,'c')==0){
                      $img="background-image:url('../abecedario/c.jpg')";
                    }

                    if(strnatcasecmp($letra,'d')==0){
                      $img="background-image:url('../abecedario/d.jpg')";
                    }

                    if(strnatcasecmp($letra,'e')==0){
                      $img="background-image:url('../abecedario/e.jpg')";
                    }

                    if(strnatcasecmp($letra,'f')==0){
                      $img="background-image:url('../abecedario/f.jpg')";
                    }
                    if(strnatcasecmp($letra,'g')==0){
                      $img="background-image:url('../abecedario/g.jpg')";
                    }

                    if(strnatcasecmp($letra,'i')==0){
                      $img="background-image:url('../abecedario/i.jpg')";
                    }
                    if(strnatcasecmp($letra,'j')==0){
                      $img="background-image:url('../abecedario/j.jpg')";
                    }
                    if(strnatcasecmp($letra,'k')==0){
                      $img="background-image:url('../abecedario/k.jpg')";
                    }
                    if(strnatcasecmp($letra,'l')==0){
                      $img="background-image:url('../abecedario/l.jpg')";
                    }
                    if(strnatcasecmp($letra,'m')==0){
                      $img="background-image:url('../abecedario/m.jpg')";
                    }
                    if(strnatcasecmp($letra,'n')==0){
                      $img="background-image:url('../abecedario/n.jpg')";
                    }
                    if(strnatcasecmp($letra,'ñ')==0){
                      $img="background-image:url('../abecedario/ñ.jpg')";
                    }
                    if(strnatcasecmp($letra,'o')==0){
                      $img="background-image:url('../abecedario/o.jpg')";
                    }
                    if(strnatcasecmp($letra,'p')==0){
                      $img="background-image:url('../abecedario/p.jpg')";
                    }
                    if(strnatcasecmp($letra,'q')==0){
                      $img="background-image:url('../abecedario/q.jpg')";
                    }
                    if(strnatcasecmp($letra,'r')==0){
                      $img="background-image:url('../abecedario/r.jpg')";
                    }
                    if(strnatcasecmp($letra,'s')==0){
                      $img="background-image:url('../abecedario/s.jpg')";
                    }
                    if(strnatcasecmp($letra,'t')==0){
                      $img="background-image:url('../abecedario/t.jpg')";
                    }
                    if(strnatcasecmp($letra,'u')==0){
                      $img="background-image:url('../abecedario/u.jpg')";
                    }
                    if(strnatcasecmp($letra,'v')==0){
                      $img="background-image:url('../abecedario/v.jpg')";
                    }
                    if(strnatcasecmp($letra,'w')==0){
                      $img="background-image:url('../abecedario/w.jpg')";
                    }
                    if(strnatcasecmp($letra,'x')==0){
                      $img="background-image:url('../abecedario/x.jpg')";
                    }
                    if(strnatcasecmp($letra,'y')==0){
                      $img="background-image:url('../abecedario/y.jpg')";
                    }
                    if(strnatcasecmp($letra,'z')==0){
                      $img="background-image:url('../abecedario/z.jpg')";
                    }


                    ?>  
                  <div class="col-md-2 cursoN" style="<?php echo $img; ?>">
                    <a href="<?php echo '../modCrearCurso/classRoom.php?nombreCurso='.@$row22['nombreCurso'].'&nombreGrado='.$nombreGrado.'&seccion='.@$row22['seccion'].'&idCurso='.@$row22['idCurso'].'&nivel='.@$row22['nivel'].'&grado='.@$row22['grado'].'&portada='.@$row22['portada']; ?>" class="linkCurso">
                      <div class="pieCurso text-center" style="width: 135px;">
                        <h5><strong><?php echo @$row22['nombreCurso']; ?></strong></h5>
                        <br>
                        <p>Grado: <?php echo $nombreGrado; ?>
                             seccion: <?php echo @$row22['seccion']; ?>
                        </p>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                      </div>
                      
                        </a>
                      </div>

                      <?php } ?>

                     
                    
                </div>
              </div> 

              <div class="col-md-11">
              <h5 class="text-left" style="margin-top: 10px;">Diversificado</h5><hr>
                <div class="row">

                  <?php while(@$row23=$cursoDiver->fetch(PDO::FETCH_ASSOC)){ 

                    @$row23['nombreCurso'];
                  

                  if(@$row23['grado']==1){
                    $nombreGrado="4to <br>";
                  }
                  if(@$row23['grado']==2){
                    $nombreGrado="5to <br>";
                  } 
                  if(@$row23['grado']==3){
                    $nombreGrado="6to <br>";
                  } 
                    


                    $letra=substr(@$row23['nombreCurso'],0,1);

                    if(strnatcasecmp($letra,'a')==0){
                      $img="background-image:url('../abecedario/a.jpg')";
                    }

                    if(strnatcasecmp($letra,'b')==0){
                      $img="background-image:url('../abecedario/b.jpg')";
                    }

                    if(strnatcasecmp($letra,'c')==0){
                      $img="background-image:url('../abecedario/c.jpg')";
                    }

                    if(strnatcasecmp($letra,'d')==0){
                      $img="background-image:url('../abecedario/d.jpg')";
                    }

                    if(strnatcasecmp($letra,'e')==0){
                      $img="background-image:url('../abecedario/e.jpg')";
                    }

                    if(strnatcasecmp($letra,'f')==0){
                      $img="background-image:url('../abecedario/f.jpg')";
                    }
                    if(strnatcasecmp($letra,'g')==0){
                      $img="background-image:url('../abecedario/g.jpg')";
                    }

                    if(strnatcasecmp($letra,'i')==0){
                      $img="background-image:url('../abecedario/i.jpg')";
                    }
                    if(strnatcasecmp($letra,'j')==0){
                      $img="background-image:url('../abecedario/j.jpg')";
                    }
                    if(strnatcasecmp($letra,'k')==0){
                      $img="background-image:url('../abecedario/k.jpg')";
                    }
                    if(strnatcasecmp($letra,'l')==0){
                      $img="background-image:url('../abecedario/l.jpg')";
                    }
                    if(strnatcasecmp($letra,'m')==0){
                      $img="background-image:url('../abecedario/m.jpg')";
                    }
                    if(strnatcasecmp($letra,'n')==0){
                      $img="background-image:url('../abecedario/n.jpg')";
                    }
                    if(strnatcasecmp($letra,'ñ')==0){
                      $img="background-image:url('../abecedario/ñ.jpg')";
                    }
                    if(strnatcasecmp($letra,'o')==0){
                      $img="background-image:url('../abecedario/o.jpg')";
                    }
                    if(strnatcasecmp($letra,'p')==0){
                      $img="background-image:url('../abecedario/p.jpg')";
                    }
                    if(strnatcasecmp($letra,'q')==0){
                      $img="background-image:url('../abecedario/q.jpg')";
                    }
                    if(strnatcasecmp($letra,'r')==0){
                      $img="background-image:url('../abecedario/r.jpg')";
                    }
                    if(strnatcasecmp($letra,'s')==0){
                      $img="background-image:url('../abecedario/s.jpg')";
                    }
                    if(strnatcasecmp($letra,'t')==0){
                      $img="background-image:url('../abecedario/t.jpg')";
                    }
                    if(strnatcasecmp($letra,'u')==0){
                      $img="background-image:url('../abecedario/u.jpg')";
                    }
                    if(strnatcasecmp($letra,'v')==0){
                      $img="background-image:url('../abecedario/v.jpg')";
                    }
                    if(strnatcasecmp($letra,'w')==0){
                      $img="background-image:url('../abecedario/w.jpg')";
                    }
                    if(strnatcasecmp($letra,'x')==0){
                      $img="background-image:url('../abecedario/x.jpg')";
                    }
                    if(strnatcasecmp($letra,'y')==0){
                      $img="background-image:url('../abecedario/y.jpg')";
                    }
                    if(strnatcasecmp($letra,'z')==0){
                      $img="background-image:url('../abecedario/z.jpg')";
                    }


                    ?>  
                  <div class="col-md-2 cursoN" style="<?php echo $img; ?>">
                    <a href="<?php echo '../modCrearCurso/classRoom.php?nombreCurso='.@$row23['nombreCurso'].'&nombreGrado='.$nombreGrado.'&seccion='.@$row23['seccion'].'&idCurso='.@$row23['idCurso'].'&nivel='.@$row23['nivel'].'&grado='.@$row23['grado'].'&portada='.@$row23['portada']; ?>" class="linkCurso">
                      <div class="pieCurso text-center" style="width: 135px;">
                        <h5><strong><?php echo @$row23['nombreCurso']; ?></strong></h5>
                        <br>
                        <p>Grado: <?php echo $nombreGrado; ?>
                             seccion: <?php echo @$row23['seccion']; ?>
                        </p>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                      </div>
                      
                        </a>
                      </div>
                      <?php } ?>
                    
                </div>
              </div>   
          
      </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php'; $nivelll=1; directoriosNivelesDer($nivelll); ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>