 <?php
$nameCole="Colegio la Preparatoria";
$_SESSION['tipoUsuario'];

function directorioNivelesNav($nivell){
  if($nivell==1){

    if($_SESSION['tipoUsuario']==1){  
      
  ?> 

<!--NAVEGACION CONTENIDO FIJO -->

	 <div class="row">
	     <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../cursosAlumno/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
	 </div>

<?php } if($_SESSION['tipoUsuario']==2){
 
 ?>

     <div class="row">
       <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../cursosDocente/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
   </div>


  <?php 
  
}

} if($nivell==2){ 
  if($_SESSION['tipoUsuario']==1){ 

  ?>


  <!--NAVEGACION CONTENIDO FIJO -->

   <div class="row">
       <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../../cursosAlumno/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
   </div>

<?php } if($_SESSION['tipoUsuario']==2){
 
 ?>

     <div class="row">
       <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../../cursosDocente/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
   </div>
<?php }}if($nivell==3){ 
  if($_SESSION['tipoUsuario']==1){  ?>

  <!--NAVEGACION CONTENIDO FIJO -->

   <div class="row">
       <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../../../cursosAlumno/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../../../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
   </div>

<?php } if($_SESSION['tipoUsuario']==2){
 
 ?>

     <div class="row">
       <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12  mst-navegacion">
           <div class="col-md-12">
              <!-- en produccion se cambiara en base si el logo no tiene nombre 
              <h1 class="txt-fuente txt-colegio" style="float:right;"><?php echo $nameCole; ?></h1>
               -->
             
              <a href="../../../cursosDocente/misCursos.php" ><img style="margin:10px;" class="img-responsive" src="../../../img/logos.jpg" width="280" height="100"></a>   

              
          </div>  
      </div>
   </div>
 <?php }}} ?>
