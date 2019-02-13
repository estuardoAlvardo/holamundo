<?php 
session_start();

require("../../conection/conexion.php");

$_SESSION['idUsuario'];
$unidad1=1;


//mostrar contenido
$q1 = ("SELECT * FROM contenido where unidad=:unidad");
$mostrarContenido=$dbConn->prepare($q1);
$mostrarContenido->bindParam(':unidad',$unidad1, PDO::PARAM_INT); 
$mostrarContenido->execute();





 ?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Mis Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="../css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- librerias para el funcionamiento del calendario -->
     <!-- JQUERY FUNCIONAL -->
   <script src='../../js/jquery.min.js'></script>

    <!-- LIBRERIAS RECONOCIMIENTO DE VOZ -->
  

  <script src="../../js/artyom/artyom.min.js"></script>
  <script src="../../js/artyom/artyom.window.js"></script>
  <script src="../../js/artyom/artyomCommands.js"></script>

 <script type="text/javascript" src="../extras/jquery.min.1.7.js"></script>
<script type="text/javascript" src="../extras/modernizr.2.5.3.min.js"></script>


 
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../../static/nav.php'; $nivell=2; directorioNivelesNav($nivell);?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../../static/lat-izquierdo.php'; $nivel=2; directoriosNiveles($nivel);?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->

<style type="text/css">
  .masCentrado{
    margin-left: 55%;
    margin-top: 60%;
  }
</style>






      <div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="margin-top: 60px;">
              <h3 class="text-center">LECTURA PRIMERO PRIMARIA</h3><br>
              <a href="pisa1p.php" class="btn align-center botonAgg-1" style="color: white; background-color:#3498db; ">¡Termine de Leer!</a>
         </div>
 
<div class="row sectionDinamico masCentrado">


            <div class="col-md-11">
              <div class="flipbook-viewport">
                <div class="container">
                  <div class="flipbook">
                    <div style="background-image:url(../portada-inicio.jpg)"></div>
                    <div style="background-image:url(../1p/lect-1-p1.jpg)"></div>
                    <div style="background-image:url(../1p/lect-1-p2.jpg)"></div>
                    <div style="background-image:url(../1p/lect-1-p3.jpg)"></div>
                    <div style="background-image:url(../1p/lect-1-p4.jpg)"></div>
                    <div style="background-image:url(../contraportada-fin.jpg)"></div>
                  
                  </div>
                </div>
              </div>

                          

                
            
            </div>

   <script type="text/javascript">
    
function loadApp() {

  // Create the flipbook

  $('.flipbook').turn({
      // Width

      width:800,
      
      // Height

      height:500,

      // Elevation

      elevation: 20,
      
      // Enable gradients

      gradients: true,
      
      // Auto center this flipbook

      autoCenter: true

  });
}

// Load the HTML4 version if there's not CSS transform

yepnope({
  test : Modernizr.csstransforms,
  yep: ['../turn/lib/turn.js'],
  nope: ['../turn/lib/turn.html4.min.js'],
  both: ['../css/basic.css'],
  complete: loadApp
});



            </script>
          
    
          </div>
        </div>

<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../../static/lat-derecho.php';  $nivelll=2; directoriosNivelesDer($nivelll);  ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../../js/bootstrap.min.js"></script>
  </body>
</html>