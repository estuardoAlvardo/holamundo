<?php 
session_start();
require("../conection/conexion.php");

(string)$_SESSION["idUsuario"];
(string)$_SESSION['nombre'];

(string)$foto=$_FILES['fotoPerfilUsuario']['name'];
(string)$ruta=$_FILES['fotoPerfilUsuario']['tmp_name'];
$directorio= "imgPerfil/".$_SESSION["idUsuario"]."/".$_SESSION['nombre'];
$destino= "imgPerfil/".$_SESSION["idUsuario"]."/".$_SESSION['nombre']."/".$foto;




if (!file_exists($directorio)){
    mkdir($directorio, 0777, true);

if (!empty($foto)){
  copy($ruta,$destino);



$q1 = $dbConn->prepare("UPDATE usuarios SET fotoPerfil=:fotoPerfil WHERE idUsuario=:idUsuario");

$q1->bindParam(':fotoPerfil', $destino, PDO::PARAM_STR);
$q1->bindParam(':idUsuario',$_SESSION["idUsuario"], PDO::PARAM_INT);
$q1->execute();
header("location:editarPerfil.php");
  }

  }   
    if (!empty($foto)){
    
    copy($ruta,$destino);

    $q1 = $dbConn->prepare("UPDATE usuarios SET fotoPerfil=:fotoPerfil WHERE idUsuario=:idUsuario");

    $q1->bindParam(':fotoPerfil', $destino, PDO::PARAM_STR);
    $q1->bindParam(':idUsuario',$_SESSION["idUsuario"], PDO::PARAM_INT);
    $q1->execute();

    header("location:editarPerfil.php");
    }





?>