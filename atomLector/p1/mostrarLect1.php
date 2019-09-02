<?php 
session_start();

require("../../conection/conexion.php");

  $pisa='pisa';
  $cnb='cnb';


      $q1 = ("SELECT * FROM atomolector where idLectura=:idLectura");
      $mostrarLectura=$dbConn->prepare($q1);
      $mostrarLectura->bindParam(':idLectura',$_GET['idLectura'], PDO::PARAM_INT); 
      $mostrarLectura->execute();

      $_SESSION['gradoEnviar']=$_GET['idLectura'];
        
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
    margin-top: 36%;
  }

  .cajaDescripcion{
                     box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                     transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                    }


</style>

      <div class="col-md-8 col-xs-8 pag-center">

         <div class="col-md-12" style="margin-top: 30px;">
          <?php while(@$row1=$mostrarLectura->fetch(PDO::FETCH_ASSOC)){   ?>
              <h3 class="text-center">Lectura: <?php echo $row1['nombreLectura']; ?></h3><br> 
              <hr>
             
         </div>

 <h4>Actividades</h4>
  <div style="margin-top: 30px;">
 <a href="lecturaDiariaJuego.php?idLectura=<?php echo $_SESSION['gradoEnviar']; ?>" class="btn btn-default botonAgg-1" style="background-color: #e67e22; border:1px solid #e67e22; color:white; ">Juego</a><br><br>

 <?php if($_GET['gradoB']>=13 and $_GET['gradoB']<=15){
  $_SESSION['audio']=$row1['audio'];
  ?>
  <h4>Audio</h4>
  <p id="audioText" style="display: none;"><?php echo $_SESSION['audio']; ?></p>
 <a onclick="reproducirAud();" class="btn btn-default botonAgg-1" style="background-color: #e67e22; border:1px solid #e67e22; color:white; ">Audio</a>


<?php } ?>
  

 <?php if($_GET['gradoB']>=1 and $_GET['gradoB']<=4){ ?> 
  <a href="miCofre.php?idLectura=<?php echo $_GET['idLectura']; ?>" class="btn btn-default botonAgg-1" style="background-color: #3498db; border:1px solid #3498db; color:white;">Mi cofre</a>
  <a href="lmNivel1CrearTexto.php?idLectura=<?php echo $_GET['idLectura'];?>&gradoB=<?php echo $_GET['gradoB'];  ?>" class="btn btn-default botonAgg-1" style="background-color: #27ae60;  border:1px solid  #27ae60; color:white;">Escritura Madura n1</a>

 
<?php } if($_GET['gradoB']>=5 and $_GET['gradoB']<=8){ ?>
<a href="miCofre.php?idLectura=<?php echo $_GET['idLectura']; ?>" class="btn btn-default botonAgg-1" style="background-color: #3498db; border:1px solid #3498db; color:white;">Mi cofre</a>
  
  <a href="lmNivel2CrearTexto.php?idLectura=<?php echo $_GET['idLectura'];?>&gradoB=<?php echo $_GET['gradoB'];?>" class="btn btn-default botonAgg-1" style="background-color: #27ae60;  border:1px solid  #27ae60; color:white;">Escritura Madura n2</a>
 
<?php } if($_GET['gradoB']>=9 and $_GET['gradoB']<=12){?>
<a href="miCofre.php?idLectura=<?php echo $_GET['idLectura']; ?>" class="btn btn-default botonAgg-1" style="background-color: #3498db; border:1px solid #3498db; color:white;">Mi cofre</a>

  
  <a href="lmNivel3CrearTexto.php?idLectura=<?php echo $_GET['idLectura']; ?>" class="btn btn-default botonAgg-1" style="background-color: #27ae60;  border:1px solid  #27ae60; color:white;">Escritura Madura n3</a>

<?php } ?>
</div>




<div class="row sectionDinamico masCentrado">
           <div class="col-md-11">
              <div class="flipbook-viewport">
                <div class="container">
                  <div class="flipbook">
                    <div style="background-image:url(<?php echo "../../".$row1['rutaPasta']."/1.jpg"; ?>)"></div>
                    <?php for($inc=1; $inc<=$row1['cantidadFicheros'];$inc++){ ?>
                    <div style="background-image:url(<?php echo "../../".$row1['rutaLectura']."/".$inc.".png";  ?>)"></div>
                  <?php } ?>
                    <div style="background-image:url(<?php echo "../../".$row1['rutaPasta']."/2.jpg"; ?>)"></div>
                  
                  </div>
                </div>
              </div>
  
        <?php  }?>

        </div>
 </div>

<div class="col-md-12" style="margin-top: -200px;">


<script>
function obtenerTiempo(){
var tiempo= $('#numTiempo').text();
alert(tiempo);  
}

</script>
  
</div>
 



   <script type="text/javascript">
   
     function startArtyom(){

    artyom.initialize({
        lang: "es-ES",
        continuous:true,// Reconoce 1 solo comando y para de escuchar
              listen:true, // Iniciar !
              debug:true, // Muestra un informe en la consola
              speed:1 // Habla normalmente
      });
  
    };

   function  reproducirAud(){
     startArtyom();
        var audio=$('#audioText').text();
        artyom.say('Veo que te gustan los cuentos, prepárate que voy a contar un cuento.'+audio);
        finAsistente();        
    }

    function informacion(){
            startArtyom();
            artyom.say("Veo que tienes dudas al momento de leer tus resultados. Estoy para servirte yo te explicare. En la primer caja llamada Datos de Lectura encontraras tus datos, la fecha y la hora en la que realizaste la prueba, en el recuadro que tiene por nombre, Nivel obtenido en la escala Pisa, está tú resultado total, esté es el nivel que alcanzaste, si quieres saber que destrezas posees dale clic.Por favor baja un poco hasta ver El enunciado Detalle de resultado. Este es el detalle de la prueba que realizaste, se detalla cada pregunta y no solo eso, también detalla si obtuviste los créditos estarán de color verde si los obtuviste y de color rojo si no lo obtuviste, aquí no se manejan puntos son créditos que obtienes según tú nivel. Te pediré de favor que bajes con el maus, Si bajas hasta encontrar los gráficos este detallara que capacidades lograste de una manera mas visual. Espero halla resuelto tus dudas.");
            finAsistente();

          }

          function audioRep(){
            artyom.say('Había una vez un príncipe que quería casarse con una princesa. pero con una  verdadera princesa de sangre real. Recorrio el mundo buscan una pero no lo consiguio. porque a pesar de que  habían muchas princesas casaderas. no halló a ninguna que le pareciera auténtica Desolado. regresó a su reino. Una noche de tormenta el princtpe y su familia oyeron de pronto que aiguien. llamaba -Toc, toc. toc Temerosos ante el extraño que podía estar a la intemperie en una noche de tanta lluvia. abrieron la puerta del castillo. Frente a ellos. vieron una muchacha muerta de frio y empapada de la cabeza a los pies -Soy una princesa contestó con voz dulce quejumbrosa. Me he perdido en la oscuridad y no tengo o donde ir está noche. Lo Joven que decía ser princesa fue bien recibida en el  palacio donde le proporcionaron ropa secas y uno suculenta cena.  Pero la reimo no se fiaba de que fuera una auténtica  princesa y se dijo: Solo hay una forma de averiguarlo Colocoré un guisante debajo del colchón de la coma donde va a dormir está nocne. Si no se da cuenta es que no es una sencible  y delicada princesa de verdad. A la mañana siguiente  la Familia real preguntó a la Joven: ¿Qué tal has dormido? Pues para serles smcem he dormido muy mal contestó algo terriblemente duro y molesto no me dejó dormir he amanecido con el cuerpo dolorido. Alborozado. la remo exclamó: -¡Ciertamente eres una princesa autentica... Sólo una princesa de verdad podría tener la delicadeza suficiente como para sentir un minúscuto guisante debajo del colchón. Y así fue cómo el príndpe encontró una maravilloosa princesa con la que casarse y ser feliz.')

          };


        function finAsistente(){
    artyom.fatality();// Detener cualquier instancia previa
  }    

//FUNCIONES PARA EBOOK
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