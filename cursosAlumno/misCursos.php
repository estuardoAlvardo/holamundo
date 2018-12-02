<?php 
session_start();
  require("../conection/conexion.php");
//curso 1
$_SESSION['idUsuario'];
$_SESSION['grado'];
$_SESSION['seccion'];

//variables de niveles
$nivelPrimaria=1;
$nivelBasico=2;
$nivelDiver=3;

consultarCursos($nivelPrimaria,$_SESSION['grado'],$_SESSION['seccion']);
//Buscar todos los cursos de este usuario primaria


function consultarCursos($nivel1,$grado1,$seccion1){
  require("../conection/conexion.php");



if($seccion1==null){
$q1 = ("SELECT * FROM cursos where grado=:grado and nivel=:nivel");
$cursosPrimaria=$dbConn->prepare($q1);
$cursosPrimaria->bindParam(':grado',$grado1, PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':nivel',$nivel1, PDO::PARAM_INT); 
$cursosPrimaria->execute();
}else{

  $q1 = ("SELECT * FROM cursos where nivel=:nivel and grado=:grado and seccion=:seccion");
$cursosPrimaria=$dbConn->prepare($q1);
$cursosPrimaria->bindParam(':nivel',$nivel1, PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':grado',$grado1, PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':seccion',$seccion1, PDO::PARAM_INT); 

$cursosPrimaria->execute();

}


/*
$q1 = ("SELECT * FROM cursos where grado=:grado and nivel=:nivel and seccion= :seccion");
$cursosPrimaria=$dbConn->prepare($q1);
$cursosPrimaria->bindParam(':grado',$_SESSION['grado'], PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':nivel',$nivelPrimaria, PDO::PARAM_INT); 
$cursosPrimaria->bindParam(':seccion',$_SESSION['seccion'], PDO::PARAM_STR); 
$cursosPrimaria->execute();
*/

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

     <!-- JQUERY FUNCIONAL -->
    <script src='../js/jquery.min.js'></script>
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php'; ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php'; ?>
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
      

          <div class="col-md-11">
              <h5 class="text-left" style=""></h5><hr>
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
                    <a href="<?php echo '../modCrearCursoa/classRoom.php?nombreCurso='.@$row21['nombreCurso'].'&nombreGrado='.$nombreGrado.'&seccion='.@$row21['seccion'].'&idCurso='.@$row21['idCurso'].'&nivel='.@$row21['nivel'].'&grado='.@$row21['grado'].'&portada='.@$row21['portada']; ?>" class="linkCurso">
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
                <?php } }?>
                      
                </div>
              </div>

              
             
          
      </div>



<!--//CENTRANDO CONTENIDO ROL 1 -->


<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php'; ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
   
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>
    
  </body>
</html>