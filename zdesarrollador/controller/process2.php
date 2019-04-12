<?php
include("../../conection/conexion.php");


$archivo = $_FILES['excel']['name'];
$tipo = $_FILES['excel']['type'];
$destino = "cop_".$archivo;//Le agregamos un prefijo para identificarlo el archivo cargado
if (copy($_FILES['excel']['tmp_name'],$destino)) echo "Archivo Cargado Con Éxito <br>";
else echo "Error Al Cargar el Archivo";
 
if (file_exists ("cop_".$archivo)){ 
/** Llamamos las clases necesarias PHPEcel */
require_once('../libreria/Classes/PHPExcel.php');
require_once('../libreria/Classes/PHPExcel/Reader/Excel2007.php');  
// Cargando la hoja de excel
$objReader = new PHPExcel_Reader_Excel2007();
$objPHPExcel = $objReader->load("cop_".$archivo);
$objFecha = new PHPExcel_Shared_Date();       
// Asignamon la hoja de excel activa
$objPHPExcel->setActiveSheetIndex(0);

$columnas = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
$filas = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

for ($i=2;$i<=$filas;$i++){
 $_DATOS_EXCEL[$i]['nombre'] = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['apellido'] = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['grado']= $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['seccion']= $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['usuario'] = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['password'] = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['tipoUsuario'] =$objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();
 $_DATOS_EXCEL[$i]['correo'] =$objPHPExcel->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();
 } 
 $errores=0;


foreach($_DATOS_EXCEL as $campo => $valor){
echo "---------------------------------------<br>";

$sql = "INSERT INTO usuarios  (nombre,apellido,grado,seccion,usuario,password,tipoUsuario,correo)  VALUES (:nombre,:apellido,:grado,:seccion,:usuario,:password,:tipoUsuario,:correo)";
    $obtenerUsuario = $dbConn->prepare($sql);
 foreach ($valor as $campo2 => $valor2){

echo "campo: $campo2 Valor: " . $valor2. "<br>";


$obtenerUsuario->bindParam(':nombre', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':apellido', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':grado', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':seccion', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':usuario', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':password', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':tipoUsuario', $valor2, PDO::PARAM_STR);
$obtenerUsuario->bindParam(':correo', $valor2, PDO::PARAM_STR);

}
$obtenerUsuario->execute();
}







}

?>