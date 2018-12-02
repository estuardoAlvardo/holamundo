<?php
session_start();
require("../conection/conexion.php");


(string)$_POST['idCurso'];
(string)$_POST['nombreCurso'];

(string)$foto=$_FILES['portada']['name'];
(string)$ruta=$_FILES['portada']['tmp_name'];
$directorio= "directorioCursos/".$_POST['idCurso']."/portadas";
$destino= "directorioCursos/".$_POST['idCurso']."/portadas/".$foto;




if (!file_exists($directorio)){
    mkdir($directorio, 0777, true);

if (!empty($foto)){
  copy($ruta,$destino);



$q1 = $dbConn->prepare("UPDATE usuarios SET fotoPerfil=:portada WHERE idCurso=:idCurso");


$q1->bindParam(':portada', $destino, PDO::PARAM_STR);
$q1->bindParam(':idCurso',$_POST['idCurso'], PDO::PARAM_STR);
$q1->execute();
header("location:classRoom.php?idCurso=".$_POST['idCurso'].'&nombreCurso='.$_POST['nombreCurso']);
  }

  }   
    if (!empty($foto)){
    
    copy($ruta,$destino);

    $q1 = $dbConn->prepare("UPDATE cursos SET portada=:portada WHERE idCurso=:idCurso");

    $q1->bindParam(':portada', $destino, PDO::PARAM_STR);
    $q1->bindParam(':idCurso',$_POST['idCurso'], PDO::PARAM_STR);
    $q1->execute();

    header("location:classRoom.php?idCurso=".$_POST['idCurso'].'&nombreCurso='.$_POST['nombreCurso']);
    }


?>

