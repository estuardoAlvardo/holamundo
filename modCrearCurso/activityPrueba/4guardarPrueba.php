<?php

session_start();

require("../../conection/conexion.php");

echo $_POST['idCurso'];
$_POST["numeroPreguntas"];
$_POST["idLeccion"];
$_POST['punteoPrueba'];
$_POST['idPrueba'];
$_POST['nombreCurso'];


@$_POST['nombreGrado'];
@$_POST['seccion'];
@$_POST['nivel'];
@$_POST['grado'];
@$_POST['portada'];

$punteoIndividual=$_POST['punteoPrueba']/$_POST["numeroPreguntas"];


for($i=1; $i<=$_POST["numeroPreguntas"]; $i++){

    @$pregunta=$_POST['pregunta'.$i];
    @$respuesta=$_POST['respuestaPregunta'.$i];
    @$option1=$_POST['pregunta'.$i.'Option1'];
    @$option2=$_POST['pregunta'.$i.'Option2'];
     @$option3=$_POST['pregunta'.$i.'Option3'];
     @$option4=$_POST['pregunta'.$i.'Option4'];
     @$option5=$_POST['pregunta'.$i.'Option5'];

    echo "----------------------<br>";
    echo "pregunta".$i." = ".@$pregunta;
    echo "respuesta Pregunta".$i." = ".@$respuesta."<br>";
    echo "Opcion 1 Pregunta".$i." = ".@$option1."<br>";
    echo "Opcion 2 Pregunta".$i." = ".@$option2."<br>";
    echo "Opcion 3 Pregunta".$i." = ".@$option3."<br>";
    echo "Opcion 4 Pregunta".$i." = ".@$option4."<br>";
    echo "Opcion 5 Pregunta".$i." = ".@$option5."<br>";
    echo "punteo Pregunta".$i." = ".@$punteoIndividual."<br>";
    echo "id Prueba pregunta".$i." = ".@$_POST['idPrueba']."<br>";
    echo "<br>";



    $insertarPregunta = "INSERT INTO preguntas(pregunta,respuesta,opcion1,opcion2,opcion3,opcion4,opcion5,punteo,idPrueba) VALUES(:pregunta,:respuesta,:opcion1,:opcion2,:opcion3,:opcion4,:opcion5,:punteo,:idPrueba)";

        $insertarPregunta = $dbConn->prepare($insertarPregunta);
                
        $insertarPregunta->bindparam(':pregunta', $pregunta);
        $insertarPregunta->bindparam(':respuesta', $respuesta);
        $insertarPregunta->bindparam(':opcion1', $option1);
        $insertarPregunta->bindparam(':opcion2', $option2);
        $insertarPregunta->bindparam(':opcion3', $option3);
        $insertarPregunta->bindparam(':opcion4', $option4);
        $insertarPregunta->bindparam(':opcion5', $option5);
        $insertarPregunta->bindparam(':punteo', $punteoIndividual);
        $insertarPregunta->bindparam(':idPrueba', @$_POST['idPrueba']);
        $insertarPregunta->execute();

        header("location:1pruebas.php?idCurso=".$_POST["idCurso"]."&nombreCurso=".$_POST['nombreCurso']."&idLeccion=".$_POST["idLeccion"]."&nombreGrado=".@$_POST['nombreGrado']."&seccion=".@$_POST['seccion']."&nivel=".@$_POST['nivel']."&grado=".@$_POST['grado']."&portada=".@$_POST['portada']);


}



?>




