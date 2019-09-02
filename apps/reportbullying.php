<?php 
session_start();

require("../conection/conexion.php");

$q1 = ("SELECT * FROM atomobullying");
$mostrarReporteBull=$dbConn->prepare($q1);
$mostrarReporteBull->execute();

 ?>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
    <title><?php echo $_SESSION["nombre"]; ?> | Reporte Bullying</title>
 
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
    

 <!-- jquery funcional -->
    <script src='../js/jquery.min.js'></script>
  </head>
  <body class="txt-fuente">

  
<!--NAVEGACION CONTENIDO FIJO -->
<?php include '../static/nav.php';  $nivell=1; directorioNivelesNav($nivell);?>
<!-- //NAVEGACION CONTENIDO FIJO -->

<!-- LATERAL IZQUIERDO CONTENIDO FIJO -->
 <?php include '../static/lat-izquierdo.php'; $nivel=1; directoriosNiveles($nivel); ?>
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
              <h3 class="text-center">Reporte Bullying</h3>
         </div>

         <div class="col-md-12 sombra" style="min-height:100px; margin-left:0px; margin-right: 70px; margin-bottom: 50px;">
           <table class="table">
    <thead>
      <tr>
        <th>Registro Alerta</th>
        <th>Tipo Agresión</th>
        <th>Nombre de la victima</th>
        <th>Grado Sección</th>
        <th>Nombre del agresor</th>
        <th>Grado Sección</th>
        <th>Descripción</th>

        
      </tr>
    </thead>
    <tbody>
      <?php while($row1=$mostrarReporteBull->fetch(PDO::FETCH_ASSOC)){

      ?>
      <tr>
        <td><?php echo $row1['fechaAlerta']." ".$row1['horaAlerta']; ?></td>
        <td><?php echo $row1['tipoBullying']; ?></td>
        <td><?php echo $row1['nombreVictima']; ?></td>
        <td><?php echo $row1['gradoSeccionVictima']; ?></td>
        <td><?php echo $row1['nombreAgresor']; ?></td>
        <td><?php echo $row1['gradoSeccionAgresor']; ?></td>
        <td><?php echo $row1['descripcion']; ?></td>

     <?php } ?>
     
    </tbody>
  </table>

         </div>
         


       
     
             
      </div>
<!--//CENTRANDO CONTENIDO ROL 1 -->

<!--LATERAL DERECHO CONTENIDO FIJO -->
		<?php include '../static/lat-derecho.php'; $nivelll=1; directoriosNivelesDer($nivelll); ?>
 <!-- //LATERAL IZQUIERDO CONTENIDO FIJO -->  

 
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="../js/jquery-3.2.1.js"></script>

    <!-- Todos los plugins JavaScript de Bootstrap (también puedes
         incluir archivos JavaScript individuales de los únicos
         plugins que utilices) -->
    <script src="../js/bootstrap.min.js"></script>

  </body>
</html>