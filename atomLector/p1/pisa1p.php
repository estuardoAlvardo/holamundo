<?php 
session_start();
//curso 1

require("../../conection/conexion.php");

$_SESSION['idUsuario'];



 ?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
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
    <script src='../js/jquery.min.js'></script>
    <!-- LIBRERIAS RECONOCIMIENTO DE VOZ -->
  
  <script src="../../js/artyom/jquery-3.1.1.js"></script>
  <script src="../../js/artyom/artyom.min.js"></script>
  <script src="../../js/artyom/artyom.window.js"></script>
  <script src="../../js/artyom/artyomCommands.js"></script>

<script language="Javascript"  type="text/javascript" src="reloj/clockCountdown.js"></script>
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../../static/nav.php'; $nivell=2; directorioNivelesNav($nivell); ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../../static/lat-izquierdo.php'; $nivel=2; directoriosNiveles($nivel);?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->
 <style type="text/css">
   .masCentrado{
    margin-top: 500px;
    margin-left: 55%;
   }
    
    .botonAgg-1 {
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  background-color: #6ab04c;
  color: black;
}

.botonAgg-1:hover {
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
  background-color: #6ab04c;
  color: black;
}
  
.cajaDescripcion{
                     box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                     transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                    }


/*cronometro inverso*/
@font-face {
  
 
}
/* aqui va el estilo que tendra el clock */

#clock, #clock-2, #clock-3{
  padding:0;
  height:90px;
  font-family: inherit;
  /*position: absolute;*/
  top: 0px;
  right: 0px;
  color: #2a2807;
  padding:4px;
  width: 300px;
  margin-top: -10px;
  margin-bottom: 20px;
  
}

.clockCountdownNumber{
  float:left;
  background:URL('reloj/numeros.png');
  display:block;
  width:34px;
  height:50px;
}

.clockCountdownSeparator_days,
.clockCountdownSeparator_hours,
.clockCountdownSeparator_minutes,
.clockCountdownSeparator_seconds
{
  float:left;
  display:block;
  width:10px;
  height:50px;
}
.clockCountdownFootItem{
  width:80px;
  float:left;
  text-align:center;
}                    



 </style>


 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="margin-top: 60px;">
              <h3 class="text-center">Test Comprensión Lectora</h3><br>
              
         </div>
      <div class="col-md-12 cajaDescripcion" style="min-height:100px; border:3px dashed pink; text-align: left">
        <h4>Nombre Lectura: "El cascabel del gato"  </h4>
        <h4>Tipo Lectura: Continuo </h4>
        <h4>Nombre Alumno: Jose Antonio Fernando Leiva </h4>
        <h4>Edad: 14 años </h4>
        <div id='clock' style="margin-left:68%; margin-top: -10%; border:0px;"></div>
        
      </div>

      <div class="col-md-12 cajaDescripcion" style="min-height: 300px; margin-top: 30px;">
        <div class="col-md-12">
          <div class="col-md-1" style="border: 3px solid white; border-radius: 20rem; color: white; text-align: center; padding: 0.5rem; box-shadow: rgba(0, 0, 0, 0.15) 0px 1px 3px 0px; font-weight: 600; min-width: 4rem; font-size: 2rem; background-color: rgb(54, 171, 203);" >1</div>
        </div>
        
      </div>


<script language="Javascript"  type="text/javascript">
            window.onload = function (){
                r = new clockCountdown('clock',{'minutes':20,'seconds':00});
                
            }
        </script>



          
      </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../../static/lat-derecho.php'; $nivelll=2; directoriosNivelesDer($nivelll); ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../../js/bootstrap.min.js"></script>
  </body>
</html>