<?php 
session_start();
//crear curso
require("../conection/conexion.php");


$insertarCurso = "INSERT INTO cursos(idCurso,nombreCurso,nivel,grado,seccion,idDocente,notaZona,notaExamen) values (:idCurso,:nombreCurso,:nivel,:grado,:seccion,:idDocente,:notaZona,:notaExamen)";
    $insertarCurso = $dbConn->prepare($insertarCurso);
    $insertarCurso->bindparam(':idCurso', $_POST['idCurso']);
        $insertarCurso->bindparam(':nombreCurso', $_POST['nombreCurso']);
        $insertarCurso->bindparam(':nivel', $_POST['nivel']);
        $insertarCurso->bindparam(':grado', $_POST['grado']);
        $insertarCurso->bindparam(':seccion', $_POST['seccion']);
        $insertarCurso->bindparam(':idDocente', $_SESSION['idUsuario']);
        $insertarCurso->bindparam(':seccion', $_POST['seccion']);
        $insertarCurso->bindparam(':idDocente', $_SESSION['idUsuario']);
        $insertarCurso->bindparam(':notaZona', $_POST['notaZona']);
        $insertarCurso->bindparam(':notaExamen', $_POST['notaExamen']);

        $insertarCurso->execute();


        header("location:addCurso.php");


 ?>


