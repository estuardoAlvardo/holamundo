<?php 
session_start();
require("../conection/conexion.php");
$_SESSION['tipoUsuario'];
if($_SESSION['tipoUsuario']==2){

  $emisor="Docente";
}

if($_SESSION['tipoUsuario']==3){

  $emisor="Coordinacion";
}

$fecha_actual=date("d/m/Y");
$hora_actual=date('h:i:s');

/*

echo $_POST['destinatario']."-------Destinatario<br>";
echo $_POST['tituloCircular']."-------tituloCircular<br>";
echo $_POST['circular']."-------circular<br>";
echo $fecha_actual."-------Fecha actual<br>";
echo $hora_actual."-------Hora actual<br>";
echo $emisor."-------Emisor<br>";
*/


$q1 = ("INSERT INTO atomocircular (receptor,tituloCircular,cuerpoCircular,emisor,fechaCircular,horaCircular) VALUES(:receptor,:tituloCircular,:cuerpoCircular,:emisor,:fechaCircular,:horaCircular)");
$insertarCircular=$dbConn->prepare($q1);
$insertarCircular->bindParam(':receptor',$_POST['destinatario'], PDO::PARAM_STR); 
$insertarCircular->bindParam(':tituloCircular',$_POST['tituloCircular'], PDO::PARAM_STR);
$insertarCircular->bindParam(':cuerpoCircular',$_POST['circular'], PDO::PARAM_STR);
$insertarCircular->bindParam(':emisor',$emisor, PDO::PARAM_STR);
$insertarCircular->bindParam(':fechaCircular',$fecha_actual, PDO::PARAM_STR);
$insertarCircular->bindParam(':horaCircular',$hora_actual, PDO::PARAM_STR);
$insertarCircular->execute();


if($_SESSION['tipoUsuario']==2){
  header("location:../cursosDocente/miscursos.php");
}







?>