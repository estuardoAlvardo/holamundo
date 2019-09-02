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

 </style>
 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center">Crear Evaluación - Opción Multiple</h3>
         </div><br>
         <div class="col-md-12" style="margin-top: 50px; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); border-radius:10px;">
              <form action="2opcionMultipleCrear.php" method="post"> 
                <h5 class="text-left col-md-12" style="margin-top: 50px;">Ingrese los datos para crear la Evaluación</h5><br>
                <input class="form-control" type="text" value="" id="" name="nombrePrueba" placeholder="Ingrese el nombre de la prueba" required><br> 
                <input class="form-control col-md-6" type="number" value="" id="" name="numeroPreguntas" placeholder="Ingrese el numero de preguntas" required><br><br><br> 
                 <input class="form-control col-md-6" type="number"   name="punteoPrueba"  placeholder="Ingrese punteo" required><br>
                   <fieldset class="col-md-12 text-left"><br>
                      <p>La actividad almacenara el punteo en </p>
                      <label>
                          <input type="radio" name="almacenPunteo" value="1" checked> Examen
                      </label>
                      <label>
                          <input type="radio" name="almacenPunteo" value="2"> Zona
                      </label>
                   </fieldset> <br>


                    <input class="form-control col-md-6" type="text" value="<?php echo $_GET['idCurso'] ?>"  name="idCurso" style="display: none">
                    <input class="form-control col-md-6" type="text" value="<?php echo $_GET['nombreCurso'] ?>" id="" name="nombreCurso" style="display: none;">
                    <input class="form-control col-md-6" type="text" value="<?php echo $_GET['idLeccion'] ?>" id="" name="idLeccion" style="display: none;"> 

                    <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">
                  
                  <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                  <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                  <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                  <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">



                  
                  <button type="reset" class="btn btn-secundary" style="cursor:pointer;">Limpiar</button>
                  <a href=" <?php echo '../classRoom.php?idCurso='.$_GET['idCurso'].'&nombreCurso='.$_GET['nombreCurso']; ?>" class="btn btn-warning" style="cursor:pointer;">volver al curso</a>
                  <input type="submit" name="enviar" class="btn btn-success" value="Siguente" style="cursor:pointer;">
              </form><br><br>


              

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
              var grado=0;
              var nivel=0;
              var prueba=0;

              var select = document.getElementById('Nivel');
              var newSelect= document.getElementById('grado');
              select.addEventListener('change',
                function(){
                  var selectedOption = this.options[select.selectedIndex];
                  var nivel= selectedOption.value;
                


                  if(selectedOption.value==1){
                    newSelect.remove(elije);
                    newSelect.remove(basico1);
                    newSelect.remove(basico2);
                    newSelect.remove(basico3);

                    var elije = document.createElement("option"); 
                    var option1 = document.createElement("option");
                    var option2 = document.createElement("option");
                    var option3 = document.createElement("option");
                    var option4 = document.createElement("option");
                    var option5 = document.createElement("option");
                    var option6 = document.createElement("option");

                    elije.text="Elija una opción";

                    //texto de los option primaria
                    option1.text = "1ro Primaria";
                    option2.text = "2do Primaria";
                    option3.text = "3ro Primaria";
                    option4.text = "4to Primaria";
                    option5.text = "5to Primaria";
                    option6.text = "6to Primaria";

                    //values de los option primaria
                    elije.value=0;
                    option1.value=1;
                    option2.value=2;
                    option3.value=3;
                    option4.value=4;
                    option5.value=5;
                    option6.value=6;

                    newSelect.add(elije);
                    newSelect.add(option1);
                    newSelect.add(option2);
                    newSelect.add(option3);
                    newSelect.add(option4);
                    newSelect.add(option5);
                    newSelect.add(option6);
                    console.log("nivel: "+nivel);

                    buscarLecturasPrimaria();                   

                  }

                  if(selectedOption.value==2){

                    newSelect.remove(elije);  
                    newSelect.remove(option1);
                    newSelect.remove(option2);
                    newSelect.remove(option3);
                    newSelect.remove(option4);
                    newSelect.remove(option5);
                    newSelect.remove(option6);
 
                    var elije   = document.createElement("option"); 
                    var basico1 = document.createElement("option");
                    var basico2 = document.createElement("option");
                    var basico3 = document.createElement("option");

                    elije.text  =  "Elija una opción";
                    basico1.text = "1ro Basicos";                   
                    basico2.text = "2do Basicos";
                    basico3.text = "3ro Basicos";

                    elije.value=0;
                    basico1.value=1;                    
                    basico2.value=2;
                    basico3.value=3;
                  
                  newSelect.add(elije);
                    newSelect.add(basico1);
                    newSelect.add(basico2);
                    newSelect.add(basico3);
                    console.log("nivel: "+nivel);
                    newSelect.remove(option6);
                    buscarLecturasBasicos();
                  }

                  if(selectedOption.value==3){
                    newSelect.remove(elije);
                    newSelect.remove(option1);
                    newSelect.remove(option2);
                    newSelect.remove(option3);
                    newSelect.remove(option4);
                    newSelect.remove(option5);
                    newSelect.remove(option6);

                    newSelect.remove(basico1);
                    newSelect.remove(basico2);
                    newSelect.remove(basico3);

                    var elije = document.createElement("option"); 
                    var diver4 = document.createElement("option");
                    var diver5 = document.createElement("option");
                    var diver6 = document.createElement("option");
                    var lenguaje = document.createElement("option");
                    var matematica = document.createElement("option");

                    elije.text="Elija una opción";  
                    diver4.text = "4to Diver";                    
                    diver5.text = "5to Diver";
                    

                    
                    elije.value=0;
                  diver4.value = 1;                   
                    diver5.value = 2;
                    
                    
                  
                  
                  newSelect.add(elije);
                    newSelect.add(diver4);
                    newSelect.add(diver5);
                    console.log("nivel: "+nivel);
                      buscarLecturasDiver();
                    
                  }

                  return nivel;

                });     


</script>
  </body>
</html>