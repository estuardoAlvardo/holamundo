<?php 
session_start();
require("../../../conection/conexion.php");

//obtener items
$sq1 = ("SELECT *  FROM atomolector as lectura join cuestionario as cues on lectura.idLectura=cues.idLectura join itemopcionmultiple as item on item.idCuestionario=cues.idCuestionario where lectura.idLectura=:idLectura");
    $obtenerCuestionario = $dbConn->prepare($sq1);
     $obtenerCuestionario->bindparam(':idLectura',$_POST['idLecturaEnviado']);
    $obtenerCuestionario->execute();


//insertar cuestionario
 $sq2 = ("INSERT INTO registropruebacomprension(idLectura,idUsuario,tiempo,fechaRegistro,horaRegistro,rPregunta1,rPregunta2,rPregunta3, rPregunta4,rPregunta5,totalObtenido, nivelObtenido) VALUES(:idLectura,:idUsuario,:tiempo,:fechaRegistro,:horaRegistro,:rPregunta1,:rPregunta2,:rPregunta3, :rPregunta4,:rPregunta5,:totalObtenido, :nivelObtenido)");
     $insertarCuestionario = $dbConn->prepare($sq2);


//datos recibidos
$_POST['idLecturaEnviado'];
$_POST['idUsuario'];
$_POST['cantidadPreguntas'];
$_POST['tiempo'];
$fecha_actual=date("d/m/Y");
$hora_actual=date('h:i:s');


$insertarCuestionario->bindparam(':idLectura',$_POST['idLecturaEnviado']);
$insertarCuestionario->bindparam(':idUsuario',$_POST['idUsuario']);
$insertarCuestionario->bindparam(':tiempo',$_POST['tiempo']);
$insertarCuestionario->bindparam(':fechaRegistro',$fecha_actual);
$insertarCuestionario->bindparam(':horaRegistro',$hora_actual);







  while(@$row1=$obtenerCuestionario->fetch(PDO::FETCH_ASSOC)){


    @$i+=1;

    if(empty($_POST['name'.$i])){
        
        $preguntaIteracion=':rPregunta'.$i;
        $_POST['name'.$i]=0;

        $insertarCuestionario->bindparam($preguntaIteracion, $_POST['name'.$i]);
      }else{


      $preguntaIteracion=':rPregunta'.$i;
      $insertarCuestionario->bindparam($preguntaIteracion, $_POST['name'.$i]);

    }


    if($row1['respuestaCorrecta']==$_POST['name'.$i]){
   
     $_POST['name'.$i];
      
      @$sumaCorrectas+=$row1['punteoItem'];
    }else{
      $punteo=0;

      $_POST['name'.$i];
      
      @$sumaIncorrectas+=$row1['punteoItem'];
    }
  }



if(empty($sumaCorrectas)){
  $sumaCorrectas=0;
}

if(empty($sumaIncorrectas)){
$sumaIncorrectas=0;

}



@$sumaCorrectas;
@$sumaIncorrectas;
$totalPisa=$sumaCorrectas-$sumaIncorrectas;


if($totalPisa<=0){
  $totalPisa=0;
}

$insertarCuestionario->bindparam(':totalObtenido',$totalPisa);

if(@$totalPisa>=698){
  $nivelObtenido="6";

}else if(@$totalPisa>=626 and @$totalPisa<=697){
  $nivelObtenido="5";
}else if(@$totalPisa>=553 and @$totalPisa<=625){
 $nivelObtenido="4";
}else if(@$totalPisa>=480 and @$totalPisa<=552){
 $nivelObtenido="3";
}else if(@$totalPisa>=407 and @$totalPisa<=479){
 $nivelObtenido="2";
}else if(@$totalPisa>=335 and @$totalPisa<=406){
 $nivelObtenido="1A";
}else if(@$totalPisa>=262 and @$totalPisa<=334){
 $nivelObtenido="1B";
}else if(@$totalPisa>=0 and @$totalPisa<=261){
 $nivelObtenido="1C";
}else{
  $nivelObtenido="1C";
}

$nivelObtenido;
$insertarCuestionario->bindparam(':nivelObtenido',$nivelObtenido);
 $insertarCuestionario->execute();
header("location:../resultado.php?idLectura=".$_POST['idLecturaEnviado']."&idUsuario=".$_POST['idUsuario']);

?>