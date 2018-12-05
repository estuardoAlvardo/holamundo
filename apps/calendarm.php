<?php 
session_start();
//curso 1
$curso="Matemáticas";
$curso="";
$leccionRealizada=1; // varaiable dependera del uso en la base de datos
$leccionPendiente=4; // variable dependera del uso en la bd 

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
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Mis Cursos</title>
 
    <!-- CSS de Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/navLateralesModPedagogico.css" rel="stylesheet" media="screen">
    <link href="../css/centroPagina.css" rel="stylesheet" media="screen">
    <link href="../css/rol5FuncCursos.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Ubuntu', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Ubuntu" rel="stylesheet"><!-- habilitar font famili font-family: 'Indie Flower', cursive;-->

    <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nunito+Sans|Ubuntu" rel="stylesheet">
 
    <!-- CDN PARA BOTONES DE EXPORTACION -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">

  <!--- LIBRERIAS PARA EL CALENDARIO---->
<meta charset='utf-8' />
<link href='calendar/fullcalendar.min.css' rel='stylesheet' />
<link href='calendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src='calendar/lib/moment.min.js'></script>
<script src='calendar/lib/jquery.min.js'></script>
<script src='calendar/fullcalendar.min.js'></script>
<script src='calendar/locale/es.js'></script>
<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
        header:{
          left:'today,prev,next',
          center:'title',
          right: 'month, agendaWeek, agendaDay'
        },
        dayClick:function(date,jsEvent,view){
          //activacion de botones o desactivacion
          $("#btnAgregar").prop('disabled',false);
          $("#btnModificar").prop('disabled',true);
          $("#btnBorrar").prop('disabled',true);


          limpiarFormulario();
          $('#fecha').val(date.format());
          
          $('#crearEvento').modal();


        },
        
        events:'http://localhost/calendar/eventos.php',
        
        eventClick:function(calEvent,jsEvent,view){
           $("#btnAgregar").prop('disabled',true);
          $("#btnModificar").prop('disabled',false);
          $("#btnBorrar").prop('disabled',false);


          $('#id').val(calEvent.id);
          $('#titulo').val(calEvent.title);
          $('#descripcion').val(calEvent.descripcion);
          var fechaHora=calEvent.start._i.split(" ");          
          $('#fecha').val(fechaHora[0]);
          $('#hora').val(fechaHora[1]);
          $('#color').val(calEvent.color);
          $('#crearEvento').modal();

        },
        editable:true,
        eventDrop:function(calEvent){
          $('#id').val(calEvent.id);
          $('#titulo').val(calEvent.title);
          $('#descripcion').val(calEvent.descripcion);
          var fechaHora=calEvent.start.format().split("T");          
          $('#fecha').val(fechaHora[0]);
          $('#hora').val(fechaHora[1]);
          $('#color').val(calEvent.color);
          datos();
          enviarDatos('modificar',NuevoEvento,true);

        }
        

      
    });

  });

</script>
<style>

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


  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }


  .fc-content{
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
  }
    .fc-content:hover{
   box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
  }

  .fc th{
    padding: 10px 0px;
  background-color:#4285f4;
  color: white;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
    
  }


</style>
</head>
<body class="txt-fuente">
  <!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php'; ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php'; ?>
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->

<!--CENTRANDO CONTENIDO ROL 1 -->
<div class="col-md-8 col-xs-8 pag-center">
         <div class="col-md-12" style="">
              <h3 class="text-center">Calendario de Actividades</h3>
         </div>
        <div class="tabbable-panel" style="margin-top: 100px;">
        <div class="tabbable-line">
          <ul class="nav nav-tabs ">
            <li class="active">
              <a href="#tab_default_1" data-toggle="tab">
               </a>
            </li>
            <!--
            <li>
              <a href="#tab_default_2" data-toggle="tab">
              Horarios </a>
            </li>
            <li>
              <a href="#tab_default_3" data-toggle="tab">
              Horarios de examen </a>
            </li>
          -->
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab_default_1">
               <div id='calendar' class="col-md-11" style="margin-top: 50px;"></div>
            
            </div>


<div class="tab-pane" id="tab_default_2">
            <table class="table">
    <thead>
      <tr>
        <th>Horario</th>
        <th>Domingo</th>
        <th>Lunes</th>
        <th>Martes</th>
        <th>Miercoles</th>
        <th>Jueves</th>
        <th>Viernes</th>
        <th>Sabado</th>        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>8:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>      
      <tr class="success">
          <td>9:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="danger">
        <td>10:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="info">
        <td>11:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="warning">
        <td>12:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="active">
        <td>1:00 pm</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
    </tbody>
  </table>

              
            </div>
            <div class="tab-pane" id="tab_default_3">
            <table class="table">
    <thead>
      <tr>
        <th>Horario</th>
        <th>Domingo</th>
        <th>Lunes</th>
        <th>Martes</th>
        <th>Miercoles</th>
        <th>Jueves</th>
        <th>Viernes</th>
        <th>Sabado</th>        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>8:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>--</td>
        <td>Sociales</td>
        <td>--</td>
        <td>--</td>
      </tr>      
      <tr class="success">
          <td>9:00 am</td>
        <td>--</td>
        <td>--</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>---</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="danger">
        <td>10:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>---</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
        <td>--</td>
      </tr>
      <tr class="info">
        <td>11:00 am</td>
        <td>--</td>
        <td>Matematicas</td>
        <td>Sociales</td>
        <td>--</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="warning">
        <td>12:00 am</td>
        <td>--</td>
        <td>--</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
        <td>Sociales</td>
        <td>--</td>
      </tr>
      <tr class="active">
        <td>1:00 pm</td>
        <td>--</td>
        <td>--</td>
        <td>--</td>
        <td>Sociales</td>
        <td>Sociales</td>
        <td>--</td>
        <td>--</td>
      </tr>
    </tbody>
  </table>
              
            </div>
          </div>
        </div>
      </div>
 
<div/>

</div>

  

<div id="crearEvento" class="modal fade" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
  <div class="modal-dialog">
    <form role="form">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Crear Evento</h4>
      </div>
      <div class="modal-body">
        <div >
            <div class="form-group">
             <input type="text" class="form-control" id="id" placeholder="Id" name="id" style="display: none;">
            </div>
            <div class="form-group">
             <input type="text" class="form-control" id="titulo" placeholder="Titulo Evento" name="titulo">
            </div>
            <div class="form-group">
              <textarea class="form-control" id="descripcion" placeholder="Descripción" name="descripcion"></textarea> 
            </div>       

            <div class="form-group">
              <input type="text" class="form-control" id="fecha" placeholder="Fecha" name="fecha">
            </div>
            <div class="form-group">
             <div class="input-group clockpicker " data-autoclose="true">
               <span class="input-group-addon">
               <span class="glyphicon glyphicon-time"></span>
               </span>
               <input type="text" class="form-control" id="hora" value="07:00" />
               </div>
            </div>
            <div class="form-group col-md-4">
              <input type="color" class="form-control" id="color" placeholder="color" value="#e67e22" name="color">
            </div><br><br> 

            <h4>¿Quienes quieres que lo vean?</h4>
            <select class="form-control" id="vistaEvento">              
            <option selected value="1">Todos</option>
            <option value="2">Primaria</option>
            <option value="3">Basicos</option>
            <option value="4">Diversificado</option>
            <option value="5">Docentes</option>
            <option value="6">Padres de familia</option>
          </select>
        

         
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success"  id="btnAgregar">Guardar Evento</button>
        <button type="button" class="btn btn-danger" id="btnModificar">Modificar</button>
        <button type="button" class="btn btn-warning" id="btnBorrar">Borar</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">cancelar</button>
       </form>
      </div>
    </div>
  </div>
  
<script type="text/javascript">

var NuevoEvento;

function datos(){
    NuevoEvento = {
        id:$('#id').val(),
        title:$('#titulo').val(),
        descripcion:$('#descripcion').val(),
        start:$('#fecha').val()+" "+$('#hora').val(),
        color:$('#color').val(),
        textColor:"#ffffff",
        end:$('#fecha').val()+" "+$('#hora').val()
      }
}



  $('#btnAgregar').click(function(){
    
      datos();
      enviarDatos('agregar',NuevoEvento);      
       
  });

    $('#btnBorrar').click(function(){
    
      datos();
      enviarDatos('eliminar',NuevoEvento);      
       
  });


    $('#btnModificar').click(function(){
    
      datos();
      enviarDatos('modificar',NuevoEvento);      
       
  });




  function enviarDatos(accion,objEvento,modal){
    $.ajax({
      type:'POST',
      url:'calendar/eventos.php?accion='+accion,
      data:objEvento,
      success:function(msg){
        if(msg){
          $('#calendar').fullCalendar('refetchEvents',NuevoEvento);
          if(!modal){
            $('#crearEvento').modal('toggle');
          }
          
        }
      },
      error:function(){
        alert('hay un error');
      }
    });
  }

  $('.clockpicker').clockpicker();

  function limpiarFormulario(){
        $('#id').val('');
          $('#titulo').val('');
          $('#descripcion').val(''); 
          $('#vistaEvento').val(1); 
          $('#hora').val('7:00');      

  }
</script>


</div>
</div>
<!--LATERAL DERECHO CONTENIDO FIJO -->
    <?php include '../static/lat-derecho.php'; ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
