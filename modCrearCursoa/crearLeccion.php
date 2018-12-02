<?php 
session_start();
require("../conection/conexion.php");


(string)$_POST['idCurso'];
$_POST['nombreLeccion'];
$_POST['nombreCurso'];



$insertarLeccion = "INSERT INTO leccion(nombreLeccion,idCurso) VALUES(:nombreLeccion, :idCurso)";

$insertarLeccion = $dbConn->prepare($insertarLeccion);
$insertarLeccion->bindparam(':nombreLeccion',$_POST['nombreLeccion'], PDO::PARAM_INT);
$insertarLeccion->bindparam(':idCurso', $_POST['idCurso'], PDO::PARAM_STR);
$insertarLeccion->execute();

header("location:classroom.php?idCurso=".$_POST['idCurso'].'&nombreCurso='.$_POST['nombreCurso']);




 ?>


