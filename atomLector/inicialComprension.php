<?php 
session_start();

require("../conection/conexion.php");
    
if(empty($_GET['curso'])){

  }else{
    switch ($_GET['curso']) {
      case '7':
        $_SESSION['curso']="Programa Lector - Atomo(Lms)";
        break;
      
      default:
        # code...
        break;
    }
  }

    $tituloGrad="1ero Primaria";
    if(empty($_SESSION['grado'])){
      $gradoBuscar=$_GET['gradoB'];
    }else{
      $gradoBuscar=$_SESSION['grado'];
    }

    $q1 = ("SELECT * FROM atomolector where grado=:grado and noLecturaDiaria=0");
    $mostrarLectura=$dbConn->prepare($q1);
    $mostrarLectura->bindParam(':grado',$gradoBuscar, PDO::PARAM_INT); 
    $mostrarLectura->execute();


  @$_GET['curso'];

  //mostramos las vocales
  $objBuscar='vocal';
 $q2 = ("SELECT * FROM aprendizajepreescolar where grado=:grado and descripcion=:descripcion");
    $mostrarVocales=$dbConn->prepare($q2);
    $mostrarVocales->bindParam(':grado',$gradoBuscar, PDO::PARAM_INT); 
    $mostrarVocales->bindParam(':descripcion',$objBuscar, PDO::PARAM_STR); 
    $mostrarVocales->execute();


 
// funcion para ver las semanas de un año
/*
setlocale(LC_TIME, "es_ES"); 

function WeekToDate ($week, $year) 
{ 
$Jan1 = mktime (1, 1, 1, 1, 1, $year); 
$iYearFirstWeekNum = (int) strftime("%W",mktime (1, 1, 1, 1, 1, $year)); 

if ($iYearFirstWeekNum == 1) 
{ 
//$week = $week - 1; 
} 

$weekdayJan1 = date ('w', $Jan1); 
$FirstMonday = strtotime(((4-$weekdayJan1)%7-3) . ' days', $Jan1); 
$CurrentMondayTS = strtotime(($week) . ' weeks', $FirstMonday); 
return ($CurrentMondayTS); 
} 
$iYear = '2019'; 
for ($i = 1; $i <= 52; $i++) { 

$sStartTS = WeekToDate ($i, $iYear); 
$sLunes = date ("Y-m-d", $sStartTS); 
list($year,$mon,$day) = explode('-',$sLunes); 
$sDomingo = date('Y-m-d',mktime(0,0,0,$mon,$day+6,$year));     
echo 'Semana: '.$i.'  de  '.$sLunes.' al '.$sDomingo;  
echo '<br>';    
} 


*/

?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]." ".$_SESSION['apellido']; ?> | Programa Comprensión Lectora</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="../css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- librerias para el funcionamiento del calendario -->
     <!-- JQUERY FUNCIONAL -->
   <script src='../js/jquery.min.js'></script>
    <!-- LIBRERIAS RECONOCIMIENTO DE VOZ -->
  
  <script src="../js/artyom/jquery-3.1.1.js"></script>
  <script src="../js/artyom/artyom.min.js"></script>
  <script src="../js/artyom/artyom.window.js"></script>
  <script src="../js/artyom/artyomCommands.js"></script>



 
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php'; $nivell=1; directorioNivelesNav($nivell);?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php'; $nivel=1; directoriosNiveles($nivel);?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->
 <style type="text/css">
   
 </style>


 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center"><?php echo $_SESSION['curso'];?></h3>
              
         </div>

         <div class="col-md-12" style="">

              <h4 class="text-left">Cuenta Cuentos</h4><hr>

                <div class="row">
              <?php while(@$row1=$mostrarLectura->fetch(PDO::FETCH_ASSOC)){ ?>
               <a href="inicial1/lect1inicial.php?idLectura=<?php echo $row1['idLectura'];?>">
                <div class="col-md-5 estiloProducto" style="min-height:150px; margin-bottom: 20px;">
                <div class="row" style="background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);">

                  <div class="col-md-5" style=" min-height:150px; 
                  background-image: url(<?php echo '../'.$row1['rutaLectura'].'/1.png'; ?>); background-size: 70%; background-repeat:no-repeat;">
                                  
                  </div>
                  <div class="col-md-7" style=" min-height: 150px; color: black;">
                    <h4 style=""><?php echo $row1['nombreLectura']; ?></h4>
                    <h5 style="text-align: left;"><?php echo "Tipo Lectura: ".$row1['tipoLectura']; ?></h5>
                    <h5 style="text-align: left;"><?php echo "Descripción: ".$row1['descripcion']; ?></h5>
                    <h5 style="text-align: left;"><?php echo "Edad: ".$row1['edadLectura']; ?></h5>

                     <?php 
                       $q3 = ("SELECT idRegistro from registropruebacomprension where idLectura=:idLectura");
                         $buscarIntentos=$dbConn->prepare($q3);
                         $buscarIntentos->bindParam(':idLectura',$row1['idLectura'], PDO::PARAM_INT); 
                         $buscarIntentos->execute();
                         $sihay=$buscarIntentos->rowCount();
                       
                         if($sihay==0){                    

                      ?>
                    <img src="enviado1.png" style="width: 40px; height: 40px; position:absolute; margin-top: -18%; margin-left:23%;">
                    <?php } else{ while(@$row2=$buscarIntentos->fetch(PDO::FETCH_ASSOC)){
                        if(@$row2['idRegistro']!=null){ ?>
                      <img src="leido1.png" style="width: 40px; height: 40px; position:absolute; margin-top: -18%; margin-left:23%;">
                    <?php } } } ?>
                  </div>

                </div>                 
               </div>
             </a>
             <div class="col-md-1"></div>
            <?php } ?>
               
             </div><br><br>


         </div>
         


         <div class="col-md-12" style="margin-top:40px;">
              <h4 class="text-left">Aprendo las Vocales</h4><hr>
         </div>

         <div class="row" style="margin-bottom: 50px;">
             <?php while(@$row2=$mostrarVocales->fetch(PDO::FETCH_ASSOC)){ ?> 
               <a href="inicial1/vocales.php?gradoB=<?php echo $gradoBuscar; ?>&idObjeto=<?php echo $row2['idAprendizaje']; ?>"><div class="col-md-5 estiloProducto" style="min-height:150px; margin-left: 10px; margin-left: 20px; margin-bottom: 20px;">
                <div class="row" style="background-image:linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%); ">

                  <div class="col-md-5" style=" min-height:150px; 
                  background-image: url(<?php echo '1in/vocales/'.$row2['objetoAprendizaje'].'/'.$row2['objetoAprendizaje'].'.png' ?>); background-size: 65%; background-repeat:no-repeat; ">                                  
                  </div>
                  <div class="col-md-7" style=" min-height: 150px; color: black;">
                    <h4 style="font-size: 22pt; " ><?php echo 'Vocal '.strtoupper($row2['objetoAprendizaje']).' - '.$row2['objetoAprendizaje']; ?></h4>
                    <h3 style="text-align: left; font-size: 10pt;"><strong>Descripción:</strong> Aprende la vocal "<?php echo $row2['objetoAprendizaje']; ?>" con los ejercicios y actividades.</h3>

                    <img src="leido1.png" style="width: 40px; height: 40px; position:absolute; margin-top:-2%; margin-left:23%;">             
                </div>

                </div>
                 
               </div></a>
             <?php } ?>  
         </div>

            <div class="col-md-12" style="margin-top:40px;">
              <h4 class="text-left">Colores</h4><hr>
            </div>

              <div class="row" style="margin-bottom: 50px;">
              
               <a href="p1/velocidad1p.php?idLectura=<?php echo $row2['idLectura'];?>&numeroLectura=<?php echo $i;?>"><div class="col-md-5 estiloProducto" style="min-height:150px; margin-left: 10px; margin-left: 20px; margin-bottom: 20px;">
                <div class="row" style="background-image:linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%); ">

                  <div class="col-md-5" style=" min-height:150px; 
                  background-image: url(); background-size: 70%; background-repeat:no-repeat; ">                                  
                  </div>
                  <div class="col-md-7" style=" min-height: 150px; color: black;">
                    <h4 >Nombre Lectura</h4>
                    <h5 style="text-align: left;">genero</h5>
                    <h5 style="text-align: left;">Descripcion</h5>
                    <h5 style="text-align: left;">Edad</h5>
                    

                    <img src="leido1.png" style="width: 40px; height: 40px; position:absolute; margin-top: -18%; margin-left:23%;">
                 
                     
                    


                  </div>

                </div>
                 
               </div></a>


         </div>



 
                  <style type="text/css">
                    .cajaCards{
                      box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                      transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                      border-radius: 5px;
                      height: 100px; 
                      margin-bottom: 20px;
                      padding-top: 10px;
                    }

                    .cajaCards:hover{
                       box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                       background: #642B73;  /* fallback for old browsers */
                      background: -webkit-linear-gradient(to right, #C6426E, #642B73);  /* Chrome 10-25, Safari 5.1-6 */
                      background: linear-gradient(to right, #C6426E, #642B73); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                      color: white;
                      font-size: bold;
                      padding-top: 10px;
                      cursor: pointer;

                    }

                    .cajaGrado{
                      box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                       background: #642B73;  /* fallback for old browsers */
                      background: -webkit-linear-gradient(to right, #C6426E, #642B73);  /* Chrome 10-25, Safari 5.1-6 */
                      background: linear-gradient(to right, #C6426E, #642B73); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                      color: white;
                      font-size: bold;
                      padding-top: 5px;


                    }

                    .btnGrado{
                       box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                       transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                       height:50px; padding-top: 20px; background-color:#2980b9;
                       margin-bottom: 20px;
                       border-radius: 10px;

                    }
                    .btnGrado:hover{
                      box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                      cursor: pointer;
                    }


                    /* acordion css*/
  
                    .estiloProducto{
                     box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                     transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                    }

                    .estiloProducto:hover{
                       box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                    }


                  </style>


                    
                 
            


      
<script type="text/javascript">

        function ejecucion(){
          startArtyom();
          artyom.say("Hola Miss Yesy, buenos días, soy tu asistente, estoy para ayudarte, y me da mucho gusto que estés aquí, te dare algunas sugerencias didácticas y algunos tips, para apoyar a tus alumnos y explotar lo mejor de ellos.");
          document.getElementById("dormida").style.display="none";
          document.getElementById("despierta").style.display="block";
          
        }


        function metodologiaActiva(){
          startArtyom();
          artyom.say("Hola!! Te dare el concepto de Metodologia Activa, la cual usamos para la enseñanza aprendizaje en atomo(LMS), La enseñanza basada en metodologías activas es una enseñanza centrada en el estudiante, en su capacitación en competencias propias del saber de la disciplina. Estas estrategias conciben el aprendizaje como un proceso constructivo y no receptivo. La psicología cognitiva ha mostrado consistentemente, que una de las estructuras más importantes de la memoria es su estructura asociativa. El conocimiento está estructurado en redes de conceptos relacionados que se denominan redes semánticas. La nueva información se acopla a la red ya existente. Dependiendo de cómo se realice esta conexión la nueva información puede ser utilizada o no, para resolver problemas o reconocer situaciones (Glaser 1991). Esto implica la concepción del aprendizaje como proceso y no únicamente como una recepción y acumulación de información. ¿Quiero saber si aprendiste, responde si aprendí, o no aprendí, porfavor?");
          document.getElementById("despierta").style.display="none";
          document.getElementById("dormida").style.display="none";
          document.getElementById("saluda").style.display="block";         
 

        }

       
      artyom.addCommands([
      {
        indexes:['sí aprendi','no aprendi'],
        action: function(i){
          if (i==0) {
            artyom.say("Perfecto");
          }
          if (i==1) {
            artyom.say("te mostrare un video ahora.");
          }          
        }
      }]); 

     



   


</script>  
          
      </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php';  $nivelll=1; directoriosNivelesDer($nivelll);  ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>