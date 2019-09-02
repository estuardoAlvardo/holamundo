<?php 
session_start();
//crear curso
require("../../conection/conexion.php");



  $sq1 = ("SELECT DISTINCT seccion FROM `usuarios` where seccion is not null");
    $obtenerSeccion = $dbConn->prepare($sq1);
    $obtenerSeccion->execute();

 ?>


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
/*------------------------------------- INPUT*/
.input-file-container {
  position: relative;
  width: 225px;
} 
.js .input-file-trigger {
  display: block;
  padding: 14px 45px;
  background: #39D2B4;
  color: #fff;
  font-size: 1em;
  transition: all .4s;
  cursor: pointer;
}
.js .input-file {
  position: absolute;
  top: 0; left: 0;
  width: 225px;
  opacity: 0;
  padding: 14px 0;
  cursor: pointer;
}
.js .input-file:hover + .input-file-trigger,
.js .input-file:focus + .input-file-trigger,
.js .input-file-trigger:hover,
.js .input-file-trigger:focus {
  background: #34495E;
  color: #39D2B4;
}

.file-return {
  margin: 0;
}
.file-return:not(:empty) {
  margin: 1em 0;
}
.js .file-return {
  font-style: italic;
  font-size: .9em;
  font-weight: bold;
}
.js .file-return:not(:empty):before {
  content: "Selected file: ";
  font-style: normal;
  font-weight: normal;

}


/* Useless styles, just for demo styles */


form {
  margin: 0 auto;
  text-align:center;
}
h2 + P {
  text-align: center;
}
.txtcenter {
  margin-top: 4em;
  font-size: .9em;
  text-align: center;
  color: #aaa;
}
.copy {
  margin-top: 2em;
}
.copy a {
  text-decoration: none;
  color: #1ABC9C;
}

.sombra{
   background: #fff;
  border-radius: 2px;
  display: inline-block;
  height: 200px;
  margin: 1rem;
  position: relative;
  padding:0px; 
  
}

.sombra-1 {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
  border-radius:0px 0px 0px 0px;
}

.sombra-1:hover {
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
}
 </style>
 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center">Primero Primaria - Areas</h3>
         </div><br>

         <div class="row">
          
             <a href="1primeroCienciaAm.php"><img src="img/1p/pri1.png" class="col-md-3 sombra sombra-1" style="margin-left: 70px;"></a>
             <img src="img/1p/pri2.png" class="col-md-3 sombra sombra-1">
             <img src="img/1p/pri3.png" class="col-md-3 sombra sombra-1">
             <img src="img/1p/pri4.png" class="col-md-3 sombra sombra-1" style="margin-left: 70px;">
             <img src="img/1p/pri5.png" class="col-md-3 sombra sombra-1">
             <img src="img/1p/pri6.png" class="col-md-3 sombra sombra-1">
             <img src="img/1p/pri7.png" class="col-md-3 sombra sombra-1" style="margin-left: 70px;">
           
          
           
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

    <script type="text/javascript">
document.querySelector("html").classList.add('js');

var fileInput  = document.querySelector( ".input-file" ),  
    button     = document.querySelector( ".input-file-trigger" ),
    the_return = document.querySelector(".file-return");
      
button.addEventListener( "keydown", function( event ) {  
    if ( event.keyCode == 13 || event.keyCode == 32 ) {  
        fileInput.focus();  
    }  
});
button.addEventListener( "click", function( event ) {
   fileInput.focus();
   return false;
});  
fileInput.addEventListener( "change", function( event ) {  
    the_return.innerHTML = this.value;  
});  

</script>
  </body>
</html>