<?php
@session_start();
$_SESSION["imgPerfil"];
$_SESSION['tipoUsuario'];


 


?>
<style type="text/css">
  
.perfil{

 background-size: 100px;
 background-repeat: no-repeat;
  height: 100px;
  width: 100px;
  margin-left: 50px;
  border-radius: 15px;
   -webkit-transition: .2s ease-in-out;
    -moz-transition: .2s ease-in-out;
    -o-transition:.2s ease-in-out;
    transition: .2s ease-in-out;
  margin-bottom: 40px;
}

.perfil:hover{

  -webkit-box-shadow: 0px 3px 30px 0px rgba(0,0,0,0.75);
}


.piePerfil{ 
  width:50px;
  height:30px;
  margin-left: -15px;
  margin-top: 123px;
  padding-top: 20px;
  padding-left: 5px;
  border-radius: 15px 15px 0px 0px;
   -webkit-transition: .2s ease-in-out;
    -moz-transition: .2s ease-in-out;
    -o-transition:.2s ease-in-out;
    transition: .2s ease-in-out;
    overflow: hidden;
    background-color: rgba(10,38,64,0.5);
    color: white;
    
}
.piePerfil:hover{
background-color: rgba(10,38,64,0.7);
height:130px;
margin-top: 0px;
border-radius:15px;
color:white;
padding-top: -13px;
width: 181px;
}


.card1100{
    box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
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
</style>

<?php 

function directoriosNivelesDer($nivelll){

if($nivelll==1){

if(empty($_SESSION["imgPerfil"])){
 $imgPerfilVeri="background-image:url(../img/profile.png)";
}else{
   $imgPerfilVeri="background-image:url(../apps".@$nivel1."/".$_SESSION["imgPerfil"].")";

}



if($_SESSION['tipoUsuario']==1){ 

?>

<!--LATERAL DERECHO CONTENIDO FIJO -->
			<div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../conection/logout.php"><img class="img-responsive img-logout" src="../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
					<h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
      					<h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
					<h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
	$(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  
<?php } if($_SESSION['tipoUsuario']==2){ ?>


<!--LATERAL DERECHO CONTENIDO FIJO -->
      <div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../conection/logout.php"><img class="img-responsive img-logout" src="../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
          <h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
                <h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
          <h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         <button class="btn botonAgg botonAgg-1"  type="button" id="dropdownMenu1" data-toggle="modal" data-target="#myModal" aria-haspopup="true" aria-expanded="true" style="background-color: rgb(54, 171, 203); color: white; border:white;">Crear Circular</button>
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  
 <?php }} if($nivelll==2){

  if(empty($_SESSION["imgPerfil"])){
 $imgPerfilVeri="background-image:url(../../img/profile.png)";
}else{
   $imgPerfilVeri="background-image:url(../../apps".@$nivel1."/".$_SESSION["imgPerfil"].")";

}

  if($_SESSION['tipoUsuario']==1){ 
  ?>
  <!--LATERAL DERECHO CONTENIDO FIJO -->
      <div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../conection/logout.php"><img class="img-responsive img-logout" src="../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
          <h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
                <h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
          <h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  
<?php } if($_SESSION['tipoUsuario']==2){ ?>


<!--LATERAL DERECHO CONTENIDO FIJO -->
      <div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../../conection/logout.php"><img class="img-responsive img-logout" src="../../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
          <h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
                <h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
          <h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         <button class="btn botonAgg botonAgg-1"  type="button" id="dropdownMenu1" data-toggle="modal" data-target="#myModal" aria-haspopup="true" aria-expanded="true" style="background-color: rgb(54, 171, 203); color: white; border:white;">Crear Circular</button>
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>

  <?php }} if($nivelll==3){

     if(empty($_SESSION["imgPerfil"])){
 $imgPerfilVeri="background-image:url(../../../img/profile.png)";
}else{
   $imgPerfilVeri="background-image:url(../../../apps".@$nivel1."/".$_SESSION["imgPerfil"].")";

}
  if($_SESSION['tipoUsuario']==1){ 

   ?>
<!--LATERAL DERECHO CONTENIDO FIJO -->
      <div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../../../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../../../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../../../conection/logout.php"><img class="img-responsive img-logout" src="../../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
          <h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
                <h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
          <h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../../../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  
<?php } if($_SESSION['tipoUsuario']==2){

 ?>


<!--LATERAL DERECHO CONTENIDO FIJO -->
      <div class="col-md-2 col-xs-2 lat-derecho">
        <div class="profile">
         
          <div class="col-md-2 perfil" style="<?php echo $imgPerfilVeri; ?>">
                    <a href="../../../apps/editarPerfil.php">
                      <div class="piePerfil text-center" style="width: 100px; margin-top: -25px;">
                        <h5 style="margin-top: -10px;"><strong>Editar Perfil</strong></h5>
                        <br>
                        <img src="../../../img/ir.png" width="50" height="50" style="margin-top: -10px;">
                        
                      </div>
                      
                        </a>
                </div>



          <h5 class="txt-fuente txt-nombre" style="margin-top: 50px;"><?php echo "Nombre: ".$_SESSION["nombre"]; ?></h5>
          <h5 class="txt-fuente txt-nombre" s><?php echo "Apellido: ".$_SESSION["apellido"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Grado: ".@$_SESSION['nombreGrado']." ".@$_SESSION["nivel"]; ?></h5> 
          <h5 class="txt-fuente txt-nombre"><?php echo "Sección: ".@$_SESSION['seccion']?></h5> 
          <a href="../../../conection/logout.php"><img class="img-responsive img-logout" src="../../../img/of.png" title="SALIR" /></a>
</div>

 
      <div class="carousel slide media-carousel" id="media" style = "width:120%;">
        <div class="carousel-inner" style="margin-top:10px;">
          <div class="item  active"  >
            <div class="row" >
              
              <div class="col-md-12" style = "width:100%;">
                <div class="alert alert-default botonAgg card1100" style="width: 100%;  background-color: #f1c40f;">
          <h4>Circular Direccion</h4>
          <div>este es un mensaje enviar por dirección</div>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#e67e22;">
                <h4>Circular Docente</h4>
                <p>este es un mensaje enviar por dirección</p>

                </div>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              
              <div class="col-md-12"  style = "width:100%">
                <div class="alert alert-default botonAgg card1100" style=" background-color:#d35400;">
          <h4>Circular para Padres</h4>
                <p> es un mensaje enviar por direccióneste es un mensaje enviar por dirección</p>

                </div>
              </div>      
            </div>
          </div>
        </div>
       
        <a data-slide="prev" href="#media" class="left carousel-control" style="margin-top:30px; margin-left:20%;">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control" style="margin-top:30px; margin-right:35%;">›</a>
        <br>
         <button class="btn botonAgg botonAgg-1"  type="button" id="dropdownMenu1" data-toggle="modal" data-target="#myModal" aria-haspopup="true" aria-expanded="true" style="background-color: rgb(54, 171, 203); color: white; border:white;">Crear Circular</button>
      </div>                          
 
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Crear Circular</h4>
        </div>
        <div class="modal-body">
          <form action="../../../apps/guardarCircular.php" method="post">
            <input type="text" class="form-control" name="destinatario" placeholder="Para: Alumnos, padres de familia, docentes" required=""><br>
            <input type="text" class="form-control" name="tituloCircular" placeholder="Titulo Circular" required><br>
             <textarea type="text" class="form-control" name="circular" placeholder="Cuerpo de la circular" required></textarea> <br>
              
             <input class="btn botonAgg botonAgg-1" type="submit" value="Crear Circular"  style="background-color: rgb(54, 171, 203); color: white; border:white; float: right; margin-top: 40px; ">
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn botonAgg botonAgg-1" data-dismiss="modal" style="background-color: #e67e22; color: white; border:white; float: right; margin-top: 10px; ">Close</button>
        </div>
      </div>
      
    </div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#media').carousel({
      
    pause: true,
    interval: 5500,
  });
});
</script>

        </div>
      </div>
 <?php }}} ?>     