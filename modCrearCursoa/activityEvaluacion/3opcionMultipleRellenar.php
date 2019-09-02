<?php 
session_start();

require("../../conection/conexion.php");


//variables que me permite mantener classroom con los datos pertenecientes al curso.

$_GET['idCurso'];
$_GET['nombreCurso'];
$_GET['idLeccion'];
$_GET['nombrePrueba'];


@$_GET['nombreGrado'];
@$_GET['seccion'];
@$_GET['nivel'];
@$_GET['grado'];
@$_GET['portada'];


$q1 = ("SELECT * from actividadprueba where nombrePrueba=:nombrePrueba and idLeccion=:idLeccion");
    $preguntas = $dbConn->prepare($q1);
    $preguntas->bindParam(':nombrePrueba',$_GET['nombrePrueba'], PDO::PARAM_STR);
    $preguntas->bindParam(':idLeccion',$_GET['idLeccion'], PDO::PARAM_INT);
    $preguntas->execute();

 ?>

<style type="text/css">
  .form-inline .form-group { margin-right:10px; }
.well-primary {
color: rgb(255, 255, 255);
background-color: rgb(66, 139, 202);
border-color: rgb(53, 126, 189);
}
.glyphicon { margin-right:100%; }
</style>


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
        
<h4 class="text-center col-md-12" style="margin-top: 50px;"><?php echo $_GET['nombrePrueba']; ?></h4>

            <div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="panel-group" id="accordion">
                <form action="4opcionMultipleGuardarPreg.php" method="post">
                  <?php  while($row1=$preguntas->fetch(PDO::FETCH_ASSOC)){  

                    for($contador=1; $contador<=$row1['numeroPreguntas']; $contador++){

                      $pregunta;

                   ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="<?php echo '#preg'.$contador; ?>"><span class="glyphicon glyphicon-th-list"></span>Pregunta <?php  echo $contador; ?> </a>
                        </h4>
                    </div>
                    <div id="<?php echo 'preg'.$contador; ?>" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-11">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idCurso" value="<?php echo $_GET['idCurso']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>

                                  <div class="form-group">
                                        <input type="text" class="form-control" name="numeroPreguntas" value="<?php echo $row1['numeroPreguntas']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idLeccion" value="<?php echo $row1['idLeccion']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="punteoPrueba" value="<?php echo $row1['punteoPrueba']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="idPrueba" value="<?php echo $row1['idPrueba']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="numeroPreguntas" value="<?php echo $row1['numeroPreguntas']; ?>" placeholder="Respuesta" required  style="display: none;"/>
                                    </div>


                                    <div class="form-group">
                                      <textarea type="text" class="form-control" name="<?php echo 'pregunta'.$contador;?>" placeholder="Ingrese la pregunta" required /></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="<?php echo 'respuestaPregunta'.$contador;?>" placeholder="Ingrese el numero de la opcion, de la respuesta correcta"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option1';?>" placeholder="Opcion 1"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="<?php echo 'pregunta'.$contador.'Option2';?>" placeholder="Opcion 2"  required />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option3';?>" placeholder="Opcion 3" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control"  name="<?php echo 'pregunta'.$contador.'Option4';?>" placeholder="Opcion 4"  />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="<?php echo 'pregunta'.$contador.'Option5';?>" placeholder="Opcion 5"  />
                                    </div>

                                    <input type="text" name="nombreCurso" value="<?php echo @$_GET['nombreCurso'];  ?>"  style="display: none;">
                                    <input type="text" name="nombreGrado" value="<?php echo @$_GET['nombreGrado'];  ?>"  style="display: none;">
                                    
                                    <input type="text" name="seccion" value="<?php echo @$_GET['seccion'];  ?>"  style="display: none;">
                                    <input type="text" name="nivel" value="<?php echo @$_GET['nivel'];  ?>"  style="display: none;">
                                    <input type="text" name="grado" value="<?php echo @$_GET['grado'];  ?>"  style="display: none;">
                                    <input type="text" name="portada" value="<?php echo @$_GET['portada'];  ?>"  style="display: none;">
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
        <?php  }  } ?>
                <div class="row">
                                <div class="col-md-12">
                                    <div class="well well-sm well-default">
                                        <form class="form form-inline " role="form">
                                        <div class="form-group">
                                            <input type="submit" value="Siguiente" class="btn btn-success btn-sm"> 
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
        </form>




            </div>
        </div>
    </div>
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