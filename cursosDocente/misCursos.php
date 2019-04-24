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
   
.cajaCards{
                      box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                      transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                      border-radius: 5px;
                      height: 150px; 
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

/* card material design style*/

.card {
  display: inline-block;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  margin: 20px;
  position: relative;
  margin-bottom: 50px;
  transition: all .2s ease-in-out;
  text-decoration: none;
  color: black; 
}

.card:hover {
  /*box-shadow: 0 5px 22px 0 rgba(0,0,0,.25);*/
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
  
}

.image {
  height: 150px;
  opacity: .7;
  overflow: hidden;
  transition: all .2s ease-in-out;
   background: -webkit-linear-gradient(to right, #C6426E, #642B73);  /* Chrome 10-25, Safari 5.1-6 */
   background: linear-gradient(to right, #C6426E, #642B73); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

.image:hover,
.card:hover .image {
  height: 150px;
  opacity: 1;
}

.text {
  background: #FFF;
  padding: 20px;
  min-height: 200px;
}

.text p {
  margin-bottom: 0px;
}

.fab {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  position: absolute;
  margin-top: -50px;
  right: 20px;
  box-shadow: 0px 2px 6px rgba(0, 0, 0, .3);
  color: #fff;
  font-size: 48px;
  line-height: 48px;
  text-align: center;
  background: #0066A2;
  -webkit-transition: -webkit-transform .2s ease-in-out;
  transition: transform .2s ease-in-out;
}

.fab:hover {
  background: #549D3C;
  cursor: pointer;
  -ms-transform: rotate(90deg);
  -webkit-transform: rotate(90deg);
  transform: rotate(90deg);
}

 </style>


 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center">Mis cursos</h3>
         </div>

 
            <h3 class="text-left" style="">Areas Principales | Según CNB</h3><hr>
           

             <div class="row">
                <a href="../atomLector/eleccionNivelprogramaLector.php?curso=7
                                ">
                  <div class="col-md-4" style="">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/programaLector.png" width="60%">
                      </div>

                      <div class="text">
                        
                        
                        <h3>Programa Lector</h3>
                        <p style="text-align: left;">Incrementa tú nivel lector, tú velocidad y fluidez con el programa lector de AtomoLMS.</p>

                      </div>

                    </div>
                  </div>
              </a>
                <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1">
                   <div class="col-md-4">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/comunicacion.jpg" width="110%">
                      </div>

                      <div class="text">
                        
                       

                        <h3>Comunicación y Lenguaje L1</h3>
                        <p style="text-align: left;">Desarrolla tus competencias y habilidades comunicativas.</p>

                      </div>

                    </div>
                  </div> 
                </a>
                 <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1">
                   <div class="col-md-4">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/mate2.jpg" width="100%">
                      </div>

                      <div class="text">
                        <h3>Matemáticas </h3>
                        <p style="text-align: left;">Desarrolla tus competencias y habilidades matematicas.</p>

                      </div>

                    </div>
                  </div> 
                </a>
                 <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1">
                   <div class="col-md-4">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/medioSocial.jpg" width="130%">
                      </div>

                      <div class="text">
                        <h3>Medio Social y Natural </h3>
                        <p style="text-align: left;">Desarrolla tus competencias y habilidades matematicas.</p>

                      </div>

                    </div>
                  </div> 
                </a>
                <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1">
                   <div class="col-md-4">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/expresionArtistica.jpg" width="130%">
                      </div>

                      <div class="text">
                        <h3>Expresión Artistica </h3>
                        <p style="text-align: left;">Desarrolla tus competencias y habilidades matematicas.</p>

                      </div>

                    </div>
                  </div> 
                </a>
                <a href="../atomoCnb/1p/Lenguaje1/eleccionNivel.php?curso=1">
                   <div class="col-md-4">
                    <div class="card">

                      <div class="image" >
                        <img  src="../img/formacion.jpg" width="100%">
                      </div>

                      <div class="text">
                        <h3>Formación Ciudadana</h3>
                        <p style="text-align: left;">Desarrolla tus competencias y habilidades matematicas.</p>

                      </div>

                    </div>
                  </div> 
                </a>
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