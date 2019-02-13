<?php
$time = time();



 ?>

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
<style>

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
 <div class="row cont-page">


<?php function directoriosNiveles($nivel){
  if($nivel==1){ // este nivel es el que todas las paginas tienen si no hay mas directorios

 ?>




      <div class="col-md-2 col-xs-2 lat-izquierdo">

      	
        <img class="img-responsive btn-back" src="../img/back3.png" title="atras" onclick="history.back(-1)"  />

        

        <div class="text-center col-md-12" style="margin-left:5px; margin-top: 50%;">
        	<h5 style="color:white; margin-left: 10px;">Mis apps</h5>

          <?php if($_SESSION['tipoUsuario']==1){  ?>

        <a href="../apps/calendarm.php" ><img class="img-responsive" src="../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../apps/misNotas.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Mis notas</h5>



          <a href="../apps/streamingCanales.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/bullying.php"><img class="img-responsive" src="../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
           <?php  } if($_SESSION['tipoUsuario']==2){  ?>


          <a href="../apps/calendarm.php" ><img class="img-responsive" src="../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../apps/streamingCanales.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/misAlumnos.php"><img class="img-responsive" src="../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
          <a href="../apps/reportbullying.php"><img class="img-responsive" src="../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a><div style="display: inline-block; border: 3px solid white; border-radius: 20rem; color: white; text-align: center; padding: 0.5rem; box-shadow: rgba(0, 0, 0, 0.15) 0px 1px 3px 0px; font-weight: 600; min-width: 4rem; font-size: 2rem; background-color: rgb(54, 171, 203); position: absolute; margin-top: -60px; margin-left: -32px;" ><?php echo @$_SESSION['reporteBullying1']; ?></div>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          

            

         <?php }if($_SESSION['tipoUsuario']==3){ ?>
         <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/misAlumnos.php"><img class="img-responsive" src="../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>




           <?php  }if($_SESSION['tipoUsuario']==4){ ?>

        <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
        	<h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



        	<a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />        		
        	</a>
        	<h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

        	<a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />        		
        	</a>
        	<h5 style="color: white; margin-left: 20px;" class="text-left">Notas</h5>



        	<a href="../static/apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />        		
        	</a>
        	<h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

         
          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 10%; margin-top: 15%;" />            
          </a>
          <h5 style="color: white; margin-left: 10%;" class="text-left">Plataformas</h5>

  <?php }?>
          

            <div class="modal fade" id="plataformas" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg ">
                    <div class="modal-content">
                       <div class="modal-header text-left">
                           Plataformas<br>
                           <hr>
                          
                       
                       <div class="modal-body">
                        <a href="https://www.progrentis.com/Selector/" target="_blank">
                           <div class="col-md-1 item">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../img/progrentis.jpg" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Progrentis</p></strong>
                           </div>
                           </a>
                          <a href="https://www.achieve3000.com/" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#achive3000">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../img/achive3000.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Achive3000</p></strong>
                           </div>
                           </a>
                           <a href="http://www.lectopolis.net/login.php" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#lectopolis">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../img/lectopolis.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Lectopolis</p></strong>
                           </div>
                           </a>
                       </div>
                       </div>
                       <div class="modal-footer">
                         <button type="button" class="btn btn-info btn1" data-dismiss="modal" style="margin-left: 90%;">Cerrar</button>
                         
                       </div>
                    </div>
                </div>
            </div>


<script>

  $(document).ready(function() {
    
    $('#calendar').fullCalendar({
        header:{
          left:'today,prev,next',
          center:'title',
          right: 'month, basicWeek, basicDay, agendaWeek, agendaDay'
        },
        dayClick:function(date,jsEvent,view){

          $('#fecha').val(date.format());
          //alert("vista Actual "+view.name); nos da el vista = mes dia 
          //alert("vista Actual "+view.name);
          //$(this).css('background-color','#e67e22');
          $('#crearEvento').modal();


        },
        
        events:'http://localhost:8080/atomolms/calendar/eventos.php',


        
        eventClick:function(calEvent,jsEvent,view){
          $('#relltitulo').val(calEvent.title);
          $('#relldescripcion').val(calEvent.descripcion);
          var fechaHora=calEvent.start._i.split(" ");          
          $('#rellfecha').val(fechaHora[0]);
          $('#rellhora').val(fechaHora[1]);
          $('#rellcolor').val(calEvent.color);
          $('#mostrarEvento').modal();

        }
        

      
    });

  });

</script>
<script type="text/javascript">
var NuevoEvento;

function datos(){
   NuevoEvento = {
        title:$('#titulo').val(),
        descripcion:$('#descripcion').val(),
        start:$('#fecha').val()+" "+$('#hora').val(),
        color:$('#color').val(),
        textColor:"#ffffff",
        end:$('#fecha').val()+" "+$('#hora').val()
      }
}



  $('#btnGuardarEvento').click(function(){
       datos();
      $('#calendar').fullCalendar('renderEvent',NuevoEvento);
        $('#crearEvento').modal('toggle');
       
  });


</script>



           
            
        	

        </div>
  </div>
<?php } if($nivel==2){  ?>
       <div class="col-md-2 col-xs-2 lat-izquierdo">

        
        <img class="img-responsive btn-back" src="../../img/back3.png" title="atras" onclick="history.back(-1)"  />

        

        <div class="text-center col-md-12" style="margin-left:5px; margin-top: 50%;">
          <h5 style="color:white; margin-left: 10px;">Mis apps</h5>

          <?php if($_SESSION['tipoUsuario']==1){  ?>

        <a href="../apps/calendarm.php" ><img class="img-responsive" src="../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../apps/misNotas.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Mis notas</h5>



          <a href="../apps/streamingCanales.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/bullying.php"><img class="img-responsive" src="../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
           <?php  } if($_SESSION['tipoUsuario']==2){  ?>


          <a href="../../apps/calendarm.php" ><img class="img-responsive" src="../../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../../apps/atomDrive.php"><img class="img-responsive" src="../../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../../apps/reportes.php"><img class="img-responsive" src="../../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../../apps/streamingCanales.php"><img class="img-responsive" src="../../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../../apps/misAlumnos.php"><img class="img-responsive" src="../../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
          <a href="../../apps/reportbullying.php"><img class="img-responsive" src="../../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a><div style="display: inline-block; border: 3px solid white; border-radius: 20rem; color: white; text-align: center; padding: 0.5rem; box-shadow: rgba(0, 0, 0, 0.15) 0px 1px 3px 0px; font-weight: 600; min-width: 4rem; font-size: 2rem; background-color: rgb(54, 171, 203); position: absolute; margin-top: -60px; margin-left: -32px;" ><?php echo @$_SESSION['reporteBullying1']; ?></div>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          

            
         <?php }if($_SESSION['tipoUsuario']==3){ ?>
         <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/misAlumnos.php"><img class="img-responsive" src="../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>




           <?php  }if($_SESSION['tipoUsuario']==4){ ?>

        <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Notas</h5>



          <a href="../static/apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

         
          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 10%; margin-top: 15%;" />            
          </a>
          <h5 style="color: white; margin-left: 10%;" class="text-left">Plataformas</h5>

  <?php }?>
          

            <div class="modal fade" id="plataformas" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg ">
                    <div class="modal-content">
                       <div class="modal-header text-left">
                           Plataformas<br>
                           <hr>
                          
                       
                       <div class="modal-body">
                        <a href="https://www.progrentis.com/Selector/" target="_blank">
                           <div class="col-md-1 item">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/progrentis.jpg" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Progrentis</p></strong>
                           </div>
                           </a>
                          <a href="https://www.achieve3000.com/" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#achive3000">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/achive3000.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Achive3000</p></strong>
                           </div>
                           </a>
                           <a href="http://www.lectopolis.net/login.php" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#lectopolis">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/lectopolis.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Lectopolis</p></strong>
                           </div>
                           </a>
                       </div>
                       </div>
                       <div class="modal-footer">
                         <button type="button" class="btn btn-info btn1" data-dismiss="modal" style="margin-left: 90%;">Cerrar</button>
                         
                       </div>
                    </div>
                </div>
            </div>


<script>

  $(document).ready(function() {
    
    $('#calendar').fullCalendar({
        header:{
          left:'today,prev,next',
          center:'title',
          right: 'month, basicWeek, basicDay, agendaWeek, agendaDay'
        },
        dayClick:function(date,jsEvent,view){

          $('#fecha').val(date.format());
          //alert("vista Actual "+view.name); nos da el vista = mes dia 
          //alert("vista Actual "+view.name);
          //$(this).css('background-color','#e67e22');
          $('#crearEvento').modal();


        },
        
        events:'http://localhost:8080/atomolms/calendar/eventos.php',


        
        eventClick:function(calEvent,jsEvent,view){
          $('#relltitulo').val(calEvent.title);
          $('#relldescripcion').val(calEvent.descripcion);
          var fechaHora=calEvent.start._i.split(" ");          
          $('#rellfecha').val(fechaHora[0]);
          $('#rellhora').val(fechaHora[1]);
          $('#rellcolor').val(calEvent.color);
          $('#mostrarEvento').modal();

        }
        

      
    });

  });

</script>
<script type="text/javascript">
var NuevoEvento;

function datos(){
   NuevoEvento = {
        title:$('#titulo').val(),
        descripcion:$('#descripcion').val(),
        start:$('#fecha').val()+" "+$('#hora').val(),
        color:$('#color').val(),
        textColor:"#ffffff",
        end:$('#fecha').val()+" "+$('#hora').val()
      }
}



  $('#btnGuardarEvento').click(function(){
       datos();
      $('#calendar').fullCalendar('renderEvent',NuevoEvento);
        $('#crearEvento').modal('toggle');
       
  });


</script>



           
            
          

        </div>
  </div>
<?php } if($nivel==3){ ?>
  <div class="col-md-2 col-xs-2 lat-izquierdo">

        
        <img class="img-responsive btn-back" src="../../../img/back3.png" title="atras" onclick="history.back(-1)"  />

        

        <div class="text-center col-md-12" style="margin-left:5px; margin-top: 50%;">
          <h5 style="color:white; margin-left: 10px;">Mis apps</h5>

          <?php if($_SESSION['tipoUsuario']==1){  ?>

        <a href="../apps/calendarm.php" ><img class="img-responsive" src="../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../apps/misNotas.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Mis notas</h5>



          <a href="../apps/streamingCanales.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/bullying.php"><img class="img-responsive" src="../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
           <?php  } if($_SESSION['tipoUsuario']==2){  ?>


          <a href="../../../apps/calendarm.php" ><img class="img-responsive" src="../../../img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../../../apps/atomDrive.php"><img class="img-responsive" src="../../../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../../../apps/reportes.php"><img class="img-responsive" src="../../../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../../../apps/streamingCanales.php"><img class="img-responsive" src="../../../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../../../apps/misAlumnos.php"><img class="img-responsive" src="../../../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../../../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>
          <a href="../../../apps/reportbullying.php"><img class="img-responsive" src="../../../img/alert.png" style="max-width:50px; max-height: 50px; margin-left:10px; margin-top: 30px;" title="Bullyng"/>           
          </a><div style="display: inline-block; border: 3px solid white; border-radius: 20rem; color: white; text-align: center; padding: 0.5rem; box-shadow: rgba(0, 0, 0, 0.15) 0px 1px 3px 0px; font-weight: 600; min-width: 4rem; font-size: 2rem; background-color: rgb(54, 171, 203); position: absolute; margin-top: -60px; margin-left: -32px;" ><?php echo @$_SESSION['reporteBullying1']; ?></div>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Bullyng</h5>

          

            
         <?php }if($_SESSION['tipoUsuario']==3){ ?>
         <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Reportes</h5>



          <a href="../apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

          <a href="../apps/misAlumnos.php"><img class="img-responsive" src="../img/alumnos.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 30px;" title="Asistencia"/>           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left" >Asistencia</h5>

          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />            
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Plataformas</h5>




           <?php  }if($_SESSION['tipoUsuario']==4){ ?>

        <a href="../static/apps/calendarm.php" ><img class="img-responsive" src="img/calendario.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />           
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Calendario</h5>



          <a href="../static/apps/atomDrive.php"><img class="img-responsive" src="../img/atomDrive.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">AtomDrive</h5>

          <a href="../static/apps/reportes.php"><img class="img-responsive" src="../img/reportes.png" style="max-width: 50px; max-height: 50px; margin-left: 20px; margin-top: 50px;" />            
          </a>
          <h5 style="color: white; margin-left: 20px;" class="text-left">Notas</h5>



          <a href="../static/apps/streaming.php"><img class="img-responsive" src="../img/streaming.png" style="max-width: 50px; max-height: 50px; margin-left: 65%; margin-top: -50%;" />           
          </a>
          <h5 style="color: white; margin-left: 60%;" class="text-left">Streaming</h5>

         
          <a href="#" data-toggle="modal" data-target="#plataformas"><img class="img-responsive" src="../img/otras.png" style="max-width: 50px; max-height: 50px; margin-left: 10%; margin-top: 15%;" />            
          </a>
          <h5 style="color: white; margin-left: 10%;" class="text-left">Plataformas</h5>

  <?php }?>
          

            <div class="modal fade" id="plataformas" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg ">
                    <div class="modal-content">
                       <div class="modal-header text-left">
                           Plataformas<br>
                           <hr>
                          
                       
                       <div class="modal-body">
                        <a href="https://www.progrentis.com/Selector/" target="_blank">
                           <div class="col-md-1 item">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/progrentis.jpg" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Progrentis</p></strong>
                           </div>
                           </a>
                          <a href="https://www.achieve3000.com/" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#achive3000">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/achive3000.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Achive3000</p></strong>
                           </div>
                           </a>
                           <a href="http://www.lectopolis.net/login.php" target="_blank">
                           <div class="col-md-1 item" data-toggle="modal" data-target="#lectopolis">
                                <div class="img-responsive sinfondo"> 
                                  <img class="img-fondo" src="../../img/lectopolis.png" style="border-radius: 10px;">
                                </div> 
                                <strong><p class="txt-fuente">Lectopolis</p></strong>
                           </div>
                           </a>
                       </div>
                       </div>
                       <div class="modal-footer">
                         <button type="button" class="btn btn-info btn1" data-dismiss="modal" style="margin-left: 90%;">Cerrar</button>
                         
                       </div>
                    </div>
                </div>
            </div>


<script>

  $(document).ready(function() {
    
    $('#calendar').fullCalendar({
        header:{
          left:'today,prev,next',
          center:'title',
          right: 'month, basicWeek, basicDay, agendaWeek, agendaDay'
        },
        dayClick:function(date,jsEvent,view){

          $('#fecha').val(date.format());
          //alert("vista Actual "+view.name); nos da el vista = mes dia 
          //alert("vista Actual "+view.name);
          //$(this).css('background-color','#e67e22');
          $('#crearEvento').modal();


        },
        
        events:'http://localhost:8080/atomolms/calendar/eventos.php',


        
        eventClick:function(calEvent,jsEvent,view){
          $('#relltitulo').val(calEvent.title);
          $('#relldescripcion').val(calEvent.descripcion);
          var fechaHora=calEvent.start._i.split(" ");          
          $('#rellfecha').val(fechaHora[0]);
          $('#rellhora').val(fechaHora[1]);
          $('#rellcolor').val(calEvent.color);
          $('#mostrarEvento').modal();

        }
        

      
    });

  });

</script>
<script type="text/javascript">
var NuevoEvento;

function datos(){
   NuevoEvento = {
        title:$('#titulo').val(),
        descripcion:$('#descripcion').val(),
        start:$('#fecha').val()+" "+$('#hora').val(),
        color:$('#color').val(),
        textColor:"#ffffff",
        end:$('#fecha').val()+" "+$('#hora').val()
      }
}



  $('#btnGuardarEvento').click(function(){
       datos();
      $('#calendar').fullCalendar('renderEvent',NuevoEvento);
        $('#crearEvento').modal('toggle');
       
  });


</script>



           
            
          

        </div>
  </div>
<?php }} ?>
  
<!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->
