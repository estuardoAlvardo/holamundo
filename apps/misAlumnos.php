<?php 
session_start();
//curso 1
$curso="Matemáticas";
$curso="";
$leccionRealizada=1; // varaiable dependera del uso en la base de datos
$leccionPendiente=4; // variable dependera del uso en la bd 

require("../../conection/conexion.php");

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
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Mis Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="../../css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- CDN PARA BOTONES DE EXPORTACION -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">
     <!-- jquery funcional -->
    <script src='../js/jquery.min.js'></script>


  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../nav.php'; ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../lat-izquierdo.php'; ?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->
 <style type="text/css">
.botonAgg {
  background: #fff;
  border-radius: 10px;
  display: inline-block;
  margin: 1rem;
  position: relative;
  
}
.botonAgg-1 {
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
}

.botonAgg-1:hover {
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
}

.sombra{
   box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

 </style>



 			<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style=" margin-bottom: 50px;">
              <h3 class="text-center">Mis Alumnos</h3>
         </div>
         <div>
            <form method="post" action="" " class="form-inline form-filtro " id="formulario">
                  <div class="form-group">
                    <label class="sr-only" for="filtro-tipo">Nivel</label>
                    <select class="form-control" name="nivel" id="Nivel" style="margin-left: -50px">
                      <option value="">Elija opción</option>
                      <option value="1">Primaria</option>
                      <option value="2">Basicos</option>
                      <option value="3">Diversificado</option>
                      <option value="4">Docentes</option>
                    </select>
                  </div>

                  <div class="form-group">
                    <label class="sr-only" for="filtro-conta">Grado</label>
                    <select class="form-control" name="grado" id="grado" style="margin-left: 20px">
                      <option value="">Elija opción</option>
                    </select>
                  </div>
                                   
                  <div class="form-group">
                    <label class="sr-only" for="filtro-tipo">Seccion</label>
                    <select class="form-control" name="seccion" id="seccion" style="margin-left: 20px">
                      <option value="0">Sección</option>
                      <option value="1">a</option>
                      <option value="2">b</option>
                      <option value="3">c</option>
                      <option value="4">d</option>
                      <option value="5">e</option>
                    </select>

                    <select class="form-control" name="seccion" id="seccion" style="margin-left: 20px">
                      <option value="0">Materia</option>
                      <option value="1">Lenguaje</option>
                      <option value="2">Matematicas</option>
                      <option value="3">Formacion Ciudadana</option>
                      <option value="4">Ciencias</option>
                      <option value="5">Sociales</option>
                    </select>
                    <select class="form-control" name="seccion" id="seccion" style="margin-left: 20px">
                      <option value="0">Enero</option>
                      <option value="1">Febrero</option>
                      <option value="2">Marzo</option>
                      <option value="3">Abril</option>
                      <option value="4">Mayo</option>
                      <option value="5">Junio</option>
                      <option value="5">julio</option>
                      <option value="5">Agosto</option>
                      <option value="5">Septiembre</option>
                      <option value="5">Octubre</option>
                      <option value="5">Nobiembre</option>
                      <option value="5">Diciembre</option>
                    </select>
                  </div><br><br>
                  <div class="form-group" style="margin-left: 92%; margin-top: -100px;">
                    <button type="button"  class="btn btn-primary"  onclick="enviar()" target="_blank" >Buscar</button>
                  </div>
                </form>
         </div>

          <div class="col-md-3 sombra text-left" style="height:25px; margin-bottom: 15px;">Reporte Uso Plataforma</div>
            <button class="btn btn-default botonAgg botonAgg-1" type="button"style="margin-left:510px;background-color: #c0392b; color: white; border:white;">PDF</button>
            <button class="btn btn-default botonAgg botonAgg-1" type="button"style="background-color: #16a085; color: white; border:white;">EXCEL</button>

          <div class="col-md-12 sombra" style=" min-height:100px; margin-bottom: 30px; ">

                    <table class="table table-hover" id="ejemplo">
                      <thead>
                        <tr>
                          <th scope="col">Alumno</th>
                          <th scope="col">Grado</th>
                          <th scope="col">Sección</th>
                          <th scope="col">Curso</th>
                          <th scope="col">Ultimo Acceso</th>
                          <th scope="col">Navegador</th>
                          <th scope="col">Ip</th>
                        </tr>
                      </thead>
                      <tbody class="text-left">
                        <tr>     
                          <td>Estuardo Alvarado</td>
                          <td>1ero Primaria</td>
                          <td>A</td>
                          <td>Matematicas</td>
                          <td>19-20-2018 2:00 pm</td>
                          <td>Chrome</td>
                          <td>192.168.2.67</td>
                        
                        </tr>
                        <tr>     
                            <td>Estuardo Alvarado</td>
                          <td>1ero Primaria</td>
                          <td>A</td>
                          <td>Matematicas</td>
                          <td>19-20-2018 2:00 pm</td>
                          <td>Chrome</td>
                          <td>192.168.2.67</td>
                       
                        </tr>
                      </tbody>
                    </table>         
          </div> 


            <div class="col-md-3 sombra text-left" style="height:25px; margin-bottom: 15px;">Reporte Asistencia</div>
            <button class="btn btn-default botonAgg botonAgg-1" type="button"style="margin-left:510px;background-color: #c0392b; color: white; border:white;">PDF</button>
            <button class="btn btn-default botonAgg botonAgg-1" type="button"style="background-color: #16a085; color: white; border:white;">EXCEL</button>

          <div class="col-md-12 sombra" style=" min-height:100px; margin-bottom: 30px; overflow-x: scroll;   ">

                    <table class="table table-hover col-md-11" id="ejemplo">
                      <thead>
                        <tr>
                          <th scope="col">Alumno</th>
                          <th scope="col">febrero</th>
                        </tr>
                        <tr>
                          <TH></TH> <?php for($i=1; $i<=31; $i++){
                          echo "<TH>".$i."</TH>";
                          }  ?> 
                         
                          
                        </tr>
                      </thead>
                      <tbody class="text-left">
                        <tr>     
                          <td>Estuardo Alvarado</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                        
                        </tr>
                        <tr>     
                            <td>Estuardo Alvarado</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                          <td>x</td>
                       
                        </tr>
                      </tbody>
                    </table>         
          </div> 



       
     
             
      </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../lat-derecho.php'; ?>
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
                    lenguaje.text = "Prueba Graduandos Lenguaje";
                    matematica.text = "Prueba Graduandos Matematicas";

                    
                    elije.value=0;
                  diver4.value = 1;                   
                    diver5.value = 2;
                    lenguaje.value = 3;
                    matematica.value = 4;
                    
                  
                  
                  newSelect.add(elije);
                    newSelect.add(diver4);
                    newSelect.add(diver5);
                    newSelect.add(lenguaje);
                    newSelect.add(matematica);
                    console.log("nivel: "+nivel);
                      buscarLecturasDiver();
                    
                  }

                  return nivel;

                });

//funciones para buscar lectura segun grado elegido
            
            function buscarLecturasPrimaria(){

              var select = document.getElementById('grado');
              var rellenarPrueba = document.getElementById('prueba');

              select.addEventListener('change',
                function(){
                  var selectedOption = this.options[select.selectedIndex];    
                  var grado= selectedOption.value;
                    


                    if(selectedOption.value==1){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";  
                        p1lect1.text="Las Ranas y el Pantano Seco";
                        p1lect2.text="Biografía de un elefante Ali";
                        p1lect3.text="El León y el Ratón";
                        p1lect4.text="Anuncio clasificado";
                        p1lect5.text="El Petirrojo de la Mamá Osa";
                        p1lect6.text="La Comunicación de los Perros";
                        p1lect7.text="La Jirafa y el Leoncito";
                        p1lect8.text="Historia del Baño.";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        
                        

                      }

                      if(selectedOption.value==2){

                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Los Pescadores y la Chatarra";
                        p1lect2.text="Biografía de Erick Barrondo";
                        p1lect3.text="El Eco";
                        p1lect4.text="Desconocidos Idénticos";
                        p1lect5.text="Mambrú";
                        p1lect6.text="El Sueño de los Animales";
                        p1lect7.text="La Leyenda de los Temblores";
                        p1lect8.text="Castillo de San Felipe";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        

                      }

                      if(selectedOption.value==3){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Lección para el Corazón";
                        p1lect2.text="Biografía de Leo Messi";
                        p1lect3.text="La Joya más Preciada";
                        p1lect4.text="Receta de la Pizza";
                        p1lect5.text="El Flautista de Hamelin";
                        p1lect6.text="Donde Anidan los Ruiseñores";
                        p1lect7.text="La Isla de los Cuentos";
                        p1lect8.text="El ABC de la Economía Maya";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        

                      }

                      if(selectedOption.value==4){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Bienestar, Éxito y Amor";
                        p1lect2.text="Biografía de Mozart";
                        p1lect3.text="Lo Bueno y lo Malo";
                        p1lect4.text="Noticia Climática";
                        p1lect5.text="El Poeta y el Califa";
                        p1lect6.text="Los Secretos de la Naturaleza";
                        p1lect7.text="Una Leyenda Centroamericana";
                        p1lect8.text="La Carta";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        

                      }

                      if(selectedOption.value==5){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="El Entierro";
                        p1lect2.text="Biografía de Mark Elliot Zuckenberg";
                        p1lect3.text="La compasión esta en los ojos";
                        p1lect4.text="Noticia Brasil";
                        p1lect5.text="La Leyenda del Sauce";
                        p1lect6.text="Descubren Notables Diferencias";
                        p1lect7.text="Pie de Lana y el Bandido";
                        p1lect8.text="Machu Pichu";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        

                      }

                      if(selectedOption.value==6){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="La China Poblana";
                        p1lect2.text="El Meteorito de Rusia";
                        p1lect3.text="El Principito";
                        p1lect4.text="Noticia: Milagro de un bebe";
                        p1lect5.text="El Misterio de Maria Celeste";
                        p1lect6.text="Laser";
                        p1lect7.text="Verdad y Mentira";
                        p1lect8.text="Segunda Guerra Mundial";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado: "+grado);
                        buscarLectura();
                        
                      }




                 

                });

        return grado;
      }



        function buscarLecturasBasicos(){

              var select = document.getElementById('grado');
              var rellenarPrueba = document.getElementById('prueba');

              select.addEventListener('change',
                function(){
                  var selectedOption = this.options[select.selectedIndex]; 
                  var grado= selectedOption.value;    
                  

                  if(selectedOption.value==1){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                      elije.text="Elija una opción";
                      p1lect1.text="Marianela";
                        p1lect2.text="Biografía de Félix Baumgartner";
                        p1lect3.text="Cantos de Amor, Vida y Esperanza";
                        p1lect4.text="El Avaro";
                        p1lect5.text="Deportes Extremos";
                        p1lect6.text="Las Langostas o Saltamontes";
                        p1lect7.text="De la Tierra a la Luna";
                        p1lect8.text="Historias Escritas en Piedra";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado Basico: "+grado);
                        buscarLectura();
                        

                      }

                      if(selectedOption.value==2){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="El Fardo";
                        p1lect2.text="Biografía de Malala Yousafzai";
                        p1lect3.text="Canto a la Argentina";
                        p1lect4.text="El Misántropo";
                        p1lect5.text="Deportes de Riego y Aventura";
                        p1lect6.text="¿De qué se trata la nutrición?";
                        p1lect7.text="Marianela";
                        p1lect8.text="Producción del Cemento";




                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado Basico: "+grado);
                        buscarLectura();
                        
                      }

                      if(selectedOption.value==3){
                        rellenarPrueba.remove(elije); 
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Poquita Cosa";
                        p1lect2.text="Biografía de Roger Federer";
                        p1lect3.text="La Ajorca de Oro";
                        p1lect4.text="Preparación Física para los Deportes";
                        p1lect5.text="La Doncella de Orleans";
                        p1lect6.text="Gestión de riesgos y los Desastres Naturales";
                        p1lect7.text="Oliver Twist";
                        p1lect8.text="Importancia del Registro Civil";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado Basico: "+grado);
                        buscarLectura();
                      }



                    


                    
                });

          return grado;

        }

            

        function buscarLecturasDiver(){
          var select = document.getElementById('grado');
          var rellenarPrueba = document.getElementById('prueba');

              select.addEventListener('change',
                function(){
                  var selectedOption = this.options[select.selectedIndex];    
                  var grado= selectedOption.value;

                  if(selectedOption.value==1){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                      elije.text="Elija una opción";
                      p1lect1.text="Familia sin Nombre";
                        p1lect2.text="Biografía de Steve Jobs";
                        p1lect3.text="A buen fin no hay mal Principio";
                        p1lect4.text="Bodas de Sangre";
                        p1lect5.text="Parkour";
                        p1lect6.text="¿Qué es el Trastorno obsesivo compulsivo?";
                        p1lect7.text="Miau";
                        p1lect8.text="Bibliotecas en Guatemala";


                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado diver: "+grado);
                        buscarLectura();
                      
                      }

                      if(selectedOption.value==2){

                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        var p1lect2 = document.createElement("option");
                        var p1lect3 = document.createElement("option");
                        var p1lect4 = document.createElement("option");
                        var p1lect5 = document.createElement("option");
                        var p1lect6 = document.createElement("option");
                        var p1lect7 = document.createElement("option");
                        var p1lect8 = document.createElement("option");


                        //texto de los option
                        elije.text="Elija una opción";
                        p1lect1.text="Madame Bovary";
                        p1lect2.text="Biografía de J.K Rowling";
                        p1lect3.text="Hamlet";
                        p1lect4.text="Bernarda de Alba";
                        p1lect5.text="Mountain Bike";
                        p1lect6.text="Enfermedad del Ebola";
                        p1lect7.text="El Retrato de Dorian Gray";
                        p1lect8.text="Orientación Vocacional";




                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                        p1lect2.value=2;
                        p1lect3.value=3;
                        p1lect4.value=4;
                        p1lect5.value=5;
                        p1lect6.value=6;
                        p1lect7.value=7;
                        p1lect8.value=8;

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        rellenarPrueba.add(p1lect2);
                        rellenarPrueba.add(p1lect3);
                        rellenarPrueba.add(p1lect4);
                        rellenarPrueba.add(p1lect5);
                        rellenarPrueba.add(p1lect6);
                        rellenarPrueba.add(p1lect7);
                        rellenarPrueba.add(p1lect8);
                        console.log("grado diver: "+grado);
                        buscarLectura();
                        
                      }

                  if(selectedOption.value==3){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Ensayo A - Lenguaje";

                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                      

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        
                        console.log("grado diver: "+grado);
                        buscarLectura();
                        
                      }

                  if(selectedOption.value==4){
                        rellenarPrueba.remove(elije);
                        rellenarPrueba.remove(p1lect1);
                        rellenarPrueba.remove(p1lect2);
                        rellenarPrueba.remove(p1lect3);
                        rellenarPrueba.remove(p1lect4);
                        rellenarPrueba.remove(p1lect5);
                        rellenarPrueba.remove(p1lect6);
                        rellenarPrueba.remove(p1lect7);
                        rellenarPrueba.remove(p1lect8);

                        var elije = document.createElement("option");
                        var p1lect1 = document.createElement("option");
                        


                        //texto de los option
                        elije.text="Elija opción";
                        p1lect1.text="Ensayo A - Matemáticas";

                        //values de los option primaria
                        elije.value=0;
                        p1lect1.value=1;
                      

                        rellenarPrueba.add(elije);
                        rellenarPrueba.add(p1lect1);
                        
                        console.log("grado diver: "+grado);
                        buscarLectura();
                        
                      }                     
                    
                });


        }


        function buscarLectura(){
          var select = document.getElementById('prueba');
          
              select.addEventListener('change',
                function(){
                  var selectedOption = this.options[select.selectedIndex];    
                  var prueba= selectedOption.value;
                  console.log("grado prueba: "+prueba);
                 
                });


        }

        function enviar(){
            document.getElementById("formulario").submit();
        }



            </script>
  </body>
</html>