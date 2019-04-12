<?php
include("../../conection/conexion.php");
//obtenemos el archivo .csv
$tipo = $_FILES['excel']['type'];
 
$tamanio = $_FILES['archivo']['size'];
 
$archivotmp = $_FILES['archivo']['tmp_name'];
 
//cargamos el archivo
$lineas = file($archivotmp);
 
//inicializamos variable a 0, esto nos ayudará a indicarle que no lea la primera línea
$i=0;
 
//Recorremos el bucle para leer línea por línea
foreach ($lineas as $linea_num => $linea)
{ 
   //abrimos bucle
   /*si es diferente a 0 significa que no se encuentra en la primera línea 
   (con los títulos de las columnas) y por lo tanto puede leerla*/
   if($i != 0) 
   { 
       //abrimos condición, solo entrará en la condición a partir de la segunda pasada del bucle.
       /* La funcion explode nos ayuda a delimitar los campos, por lo tanto irá 
       leyendo hasta que encuentre un ; */
       $datos = explode(";",$linea);
 
       //Almacenamos los datos que vamos leyendo en una variable
       //usamos la función utf8_encode para leer correctamente los caracteres especiales
       $nombre = utf8_encode($datos[0]);
       $apellido = utf8_encode($datos[1]);
       $grado = utf8_encode($datos[2]);
       $seccion = utf8_encode($datos[3]);
       $usuario = utf8_encode($datos[4]);
       $password = utf8_encode($datos[5]);
       $tipoUsuario = utf8_encode($datos[6]);
       $correo = utf8_encode($datos[7]);
 
       //guardamos en base de datos la línea leida
       mysql_query("INSERT INTO usuarios(nombre,apellido,grado, seccion, usuario, password, tipoUsuario,correo) VALUES('$nombre','$apellido','$grado','$seccion','$usuario','$password','$tipoUsuario','$correo')");
 
       //cerramos condición
   }
 
   /*Cuando pase la primera pasada se incrementará nuestro valor y a la siguiente pasada ya 
   entraremos en la condición, de esta manera conseguimos que no lea la primera línea.*/
   $i++;
   //cerramos bucle
}

?>