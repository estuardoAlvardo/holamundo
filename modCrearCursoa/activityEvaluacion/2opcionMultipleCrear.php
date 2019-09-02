<?php 
session_start();
//crear curso
session_start();
require("../../conection/conexion.php");
//variables que me permite mantener classroom con los datos pertenecientes al curso.
echo $_POST['idCurso'];
echo $_POST['nombreCurso'];

//VARIABLES PARA CREAR LA PRUEBA
echo $_POST['idLeccion'];
echo $_POST['nombrePrueba'];
echo $_POST['numeroPreguntas'];
echo $_POST['punteoPrueba'];
echo $_POST['almacenPunteo'];


@$_POST['nombreGrado'];
@$_POST['seccion'];
@$_POST['nivel'];
@$_POST['grado'];
@$_POST['portada'];





$insertarPrueba = "INSERT INTO actividadprueba(nombrePrueba,numeroPreguntas,punteoPrueba,tipoPunteo,idLeccion) VALUES(:nombrePrueba, :numeroPreguntas,:punteoPrueba, :tipoPunteo,:idLeccion)";


$insertarPrueba = $dbConn->prepare($insertarPrueba);
                
        $insertarPrueba->bindparam(':nombrePrueba', $_POST['nombrePrueba']);
        $insertarPrueba->bindparam(':numeroPreguntas', $_POST['numeroPreguntas']);        
        $insertarPrueba->bindparam(':punteoPrueba', $_POST['punteoPrueba']);
        $insertarPrueba->bindparam(':tipoPunteo', $_POST['almacenPunteo']);  //1 = examen 2= zona
        $insertarPrueba->bindparam(':idLeccion', $_POST['idLeccion']);
         $insertarPrueba->execute();


header("location:3opcionMultipleRellenar.php?idCurso=".$_POST['idCurso']."&nombreCurso=".$_POST['nombreCurso']."&idLeccion=".$_POST['idLeccion'].'&nombrePrueba='.$_POST['nombrePrueba']."&nombreGrado=".@$_POST['nombreGrado']."&seccion=".@$_POST['seccion']."&nivel=".@$_POST['nivel']."&grado=".@$_POST['grado']."&portada=".@$_POST['portada']);      
 ?>

