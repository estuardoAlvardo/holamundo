<?php 
session_start();


require("../conection/conexion.php");

$_SESSION['idUsuario'];


//Buscar todos los cursos de este usuario primaria

$q1 = ("SELECT * FROM atomodrive where idUsuario=:idUsuario");
$misDocumentos=$dbConn->prepare($q1);
$misDocumentos->bindParam(':idUsuario',$_SESSION['idUsuario'], PDO::PARAM_INT); 
$misDocumentos->execute();


?>


<!DOCTYPE html>
<html lang="es">
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
    <!-- jquery funcional -->
    <script src='../js/jquery.min.js'></script>
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php'; ?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php'; ?>
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

/*modal*/
.miVentanaCss{

  position: fixed; 
  width: 550px; 
  min-height: 100px; 
  top: 10%; 
  left: 0;  
  background-color: #e67e22; 
  color: #ffffff; 
  display:none; 
  border-radius: 10px; 
  padding: 20px; 
  -webkit-box-shadow: -5px 9px 38px -5px rgba(0,0,0,0.75);
  -moz-box-shadow: -5px 9px 38px -5px rgba(0,0,0,0.75);
  box-shadow: -5px 9px 38px -5px rgba(0,0,0,0.75);
}

 </style>

 	<div class="col-md-8 col-xs-8 pag-center">
 		<div id="fondoModal">

         <div class="col-md-12" style="">
              <h3 class="text-center">AtomDrive</h3>
         </div>

         <div style="margin-right: 90%;">
            <div class="dropdown botonAgg botonAgg-1" >
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: rgb(54, 171, 203); color: white; border:white;"><img src="../img/plus.png" width="30" height="30" style="margin-left: 5px; margin-right: 10px;">NUEVO              
              <span class="caret"></span>
            </button>
            
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" style="margin-left:50px;">
              <li "><a href="#" class="btnSubir">subir archivo</a></li>
              <li><a href="#">Crear Carpeta</a></li>
              <li><a href="#">Subir Carpeta</a></li>              
            </ul>
          </div>
        </div>
        <form action="atomDriveSubir.php" method="post" enctype="multipart/form-data">
        <input  type="file" class="subirArchivo" name="fotoPerfilUsuario" style="opacity:0;  margin-top: -15%; cursor: pointer; width: 100px; height: 100px; position: absolute; margin-left: 0px;"  >
        
       <br><br>
        <h4 class="text-left col-md-3 botonAgg-1 "  style="background-color: #e67e22; color: white; border-radius: 50px;">Mis Documentos <i class="glyphicon glyphicon-cloud"></i></h4><br><br><hr>
        <div>
                       <table class="table table-hover">
                <thead>
                  <tr>
                  
                    <th scope="col">Nombre Documento</th>
                    <th scope="col">Propietario</th>
                    <th scope="col">Tamaño Archivo</th>
                  </tr>
                </thead>
                <tbody class="text-left">
                  <?php while($row1=$misDocumentos->fetch(PDO::FETCH_ASSOC)){                
               
                 ?>  
                  <tr>   

                    <td><?php echo $row1['nombreArchivo']; ?>
                       <div class="dropdown botonAgg botonAgg-1" >
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: #e67e22; color: white; border:white;">
                          
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="margin-left: 50%;">
                          <li><a href="atomoDriveDescargar.php?file=<?php echo $row1['nombreArchivo']; ?>&id=<?php echo $_SESSION['idUsuario']; ?>">Descargar</a></li>
                          <li><a href="#" onclick="compartir();">Compartir</a></li>
                          <li><a href="#">Mover</a></li>            
                        </ul>
                        </div>
                    </td>
                    <td>yo</td>
                    <td><?php echo $row1['peso']; ?></td>
                  <?php } ?>
                  </tr>
                 
                </tbody>
              </table>
        </div><br>

         <h4 class="text-left col-md-4 botonAgg-1" style="background-color: #8e44ad; color:white; border-radius: 50px;">Compartido Conmigo <i class="glyphicon glyphicon-gift"></i> </h4><br><br><hr>
        <div>
                  <table class="table table-hover">
                <thead>
                  <tr>
                   
                    <th scope="col">Nombre</th>
                    <th scope="col">Propietario</th>
                    <th scope="col">Tamaño Archivo</th>
                  </tr>
                </thead>
                <tbody class="text-left">
                  <tr>                    
                    <td>texto-comunicacion-y-lenguaje-1er_grado.pdf
                       <div class="dropdown botonAgg botonAgg-1" >
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: #8e44ad; color: white; border:white;">
                          
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="margin-left: 50%;">
                          <li><a href="#">Compartir</a></li>
                          <li><a href="#">Mover</a></li>            
                        </ul>
                        </div>
                    </td>
                    <td>yo</td>
                    <td>150 Kb</td>
                  </tr>
                  <tr>                    
                    <td>Orden_Pago_Jéssica-Morales.pdf
                       <div class="dropdown botonAgg botonAgg-1" >
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: #8e44ad; color: white; border:white;">
                          
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="margin-left: 50%;">
                          <li><a href="#">Compartir</a></li>
                          <li><a href="#">Mover</a></li>            
                        </ul>
                        </div>
                    </td>
                    <td>yo</td>
                    <td>663 Kb</td>
                  </tr>
                  
                </tbody>
              </table>
        </div><br>

        <h4 class="text-left col-md-3 botonAgg-1" style="background-color: #16a085; color: white; border-radius: 50px;">Coordinación <i class="glyphicon glyphicon-transfer"></i></h4><br><br><hr>
        <div>
                 <table class="table table-hover">
                <thead>
                  <tr>
                   
                    <th scope="col">Nombre</th>
                    <th scope="col">Propietario</th>
                    <th scope="col">Tamaño Archivo</th>
                  </tr>
                </thead>
                <tbody class="text-left">
                  <tr>                    
                    <td>texto-comunicacion-y-lenguaje-1er_grado.pdf
                       <div class="dropdown botonAgg botonAgg-1" >
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: #16a085; color: white; border:white;">
                          
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="margin-left: 50%;">
                          <li><a href="#">Compartir</a></li>
                          <li><a href="#">Mover</a></li>            
                        </ul>
                        </div>
                    </td>
                    <td>yo</td>
                    <td>150 Kb</td>
                  </tr>
                  <tr>                    
                    <td>Orden_Pago_Jéssica-Morales.pdf
                       <div class="dropdown botonAgg botonAgg-1" >
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background-color: #16a085; color: white; border:white;">
                          
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="margin-left: 50%;">
                          <li><a href="#">Compartir</a></li>
                          <li><a href="#">Mover</a></li>            
                        </ul>
                        </div>
                    </td>
                    <td>yo</td>
                    <td>663 Kb</td>
                  </tr>
                  
                </tbody>
              </table>
        </div><br>

         <h4 class="text-left col-md-3 botonAgg-1" style="background-color: #16a085; color: white; border-radius: 50px;">Orientación <i class="glyphicon glyphicon-transfer"></i></h4><br><br><hr>
         <div>
         Ningun archivo compartidos con orientacion.
        </div><br>

         <h4 class="text-left col-md-3 botonAgg-1" style="background-color: #16a085; color: white; border-radius: 50px;">Secretaria <i class="glyphicon glyphicon-transfer"></i></h4><br><br><hr>
         <div>
         Ningun archivo compartidos con Secretaria
        </div><br>

        

		</div>
		   <div id="crearLeccion"  class="miVentanaCss">
            <div class="row">
              <div class="col-md-11 text-left" style=" margin-left:0; padding-bottom:5px; ">
                <h4 class="text-center">Se cargo correctamente ¿Guardar en mis documentos?</h4>
                <br><br>                
                  <label style="color: black;" class="col-sm-12 control-label archivoSelec" style="text-align: center; display: none;"></label>  
                 <br>
                  
                                   
                </form>
              </div>
            </div>
            <br> 
            <div class="row" >
              <div class="col-md-5"></div>
              <input style="  background-color: #2980b9; border:1px solid #2980b9; padding: 2px; border-radius: 5px;" type="submit" name="enviar" value="GUARDAR" class="col-md-3 botonAgg-1"> 
            <button class="col-md-3 botonAgg-1" onclick="ocultarLeccion()" style="margin-left:10px; background-color: #e74c3c; border:1px solid #e74c3c; padding: 2px; border-radius: 5px; ">CANCELAR</button>  
            
            </div>       
     
      </div>


         <div id="compartir"  class="miVentanaCss" style=" background-color: #16a085;">
            <div class="row">
              <div class="col-md-11 text-left" style=" margin-left:0; padding-bottom:5px; ">
                <h4 class="text-center">Ingresa el correo para compartir :) </h4>
                <br>               
                   <input style="margin-left: 30px;" class=" col-md-6 form-control" type="text"  name="nombreLeccion" placeholder="Ingrese Correo" required><br>                  
             
              </div>
            </div>
            <br> 
            <div class="row" >
              <div class="col-md-5"></div>
              <input style="  background-color: #2980b9; border:1px solid #2980b9; padding: 2px; border-radius: 5px;" type="submit" name="enviar" value="GUARDAR" class="col-md-3 botonAgg-1"> 
            <button class="col-md-3 botonAgg-1" onclick="ocultarCompartir()" style="margin-left:10px; background-color: #e74c3c; border:1px solid #e74c3c; padding: 2px; border-radius: 5px; ">CANCELAR</button>  
            
            </div>       
     
      </div>  
          
      </div>
              <script type="text/javascript">
            $('.btnSubir').click(function(event) {
         $('.subirArchivo').click();
        });
            //capture selected filename
        $('.subirArchivo').change(function(click) {
          var body =  document.getElementById('fondoModal');
            var ventana = document.getElementById('crearLeccion');
            ventana.style.marginTop = "100px";
            ventana.style.left = ((document.body.clientWidth-500) / 2) +  "px";
            ventana.style.display = 'block';
            body.style.filter="blur(10px)";
          $('.archivoSelec').show();
          $('.archivoSelec').text(this.value);
        });

  function ocultarLeccion()
          {

            var body =  document.getElementById('fondoModal');
              var ventana = document.getElementById('crearLeccion');
             
              ventana.style.display = 'none';
              body.style.filter="blur(0px)";
          }


  function compartir(){
    var body =  document.getElementById('fondoModal');
            var ventana = document.getElementById('compartir');
            ventana.style.marginTop = "100px";
            ventana.style.left = ((document.body.clientWidth-500) / 2) +  "px";
            ventana.style.display = 'block';
            body.style.filter="blur(10px)";

  }  
  function ocultarCompartir()
          {

            var body =  document.getElementById('fondoModal');
              var ventana = document.getElementById('compartir');
             
              ventana.style.display = 'none';
              body.style.filter="blur(0px)";
          }      

        </script>


<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php'; ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../js/jquery-3.2.1.js"></script>
 
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>