<?php
 session_start();
include("conexion.php");

//datos recibido del usuario 

$_POST["txtUsuario"];
$_POST["txtPassword"];

//constantes de colegio 

$_SESSION['nombreInstitucion']="COLEGIO NUESTRA SEÑORA DEL CARMEN";




$sql1 = ("SELECT * FROM usuarios where usuario=:usuario");
$obtenerUsuario = $dbConn->prepare($sql1);
$obtenerUsuario->bindParam(':usuario', $_POST['txtUsuario'], PDO::PARAM_INT); 
$obtenerUsuario->execute();

$sql2 = ("SELECT * FROM atomobullying");
$buscarBullying = $dbConn->prepare($sql2);
$buscarBullying->execute();
$total=$buscarBullying->rowCount();

if($total>0){

	$_SESSION['reporteBullying1']=$total;
}elseif($total==null){
$_SESSION['reporteBullying1']=0;
}




while ($row=$obtenerUsuario->fetch(PDO::FETCH_ASSOC)){
	$_SESSION["idUsuario"]=(int)$row['idUsuario'];
	$_SESSION["nombre"]=$row['nombre'];
	$_SESSION["apellido"]=$row['apellido'];
	$_SESSION["grado"]=$row['grado'];
	$_SESSION["seccion"]=$row['seccion'];
	$_SESSION["tipoUsuario"]=$row['tipoUsuario'];
	$_SESSION["correo"]=$row['correo'];

	$_SESSION["usuario"]=$row['usuario'];
	$_SESSION["password"]=$row['password'];
	$_SESSION["imgPerfil"]=$row['fotoPerfil'];

}



if(strcmp($_SESSION["usuario"], $_POST["txtUsuario"])==0 &&  strcmp($_SESSION["password"], $_POST["txtPassword"])==0){

	//indicamos el grado en un string

	switch ($_SESSION["grado"]) {
		case 1:
			$_SESSION['nombreGrado']="1ro";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 2:
			$_SESSION['nombreGrado']="2do ";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 3:
			$_SESSION['nombreGrado']="3ro ";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 4:
			$_SESSION['nombreGrado']="4to";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 5:
			$_SESSION['nombreGrado']="5to";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 6:
			$_SESSION['nombreGrado']="6to";
			$_SESSION['nivel']="Primaria";
			$_SESSION['rol']="Estudiante";
			break;
		case 7:
			$_SESSION['nombreGrado']="1ro";
			$_SESSION['nivel']="Básico";
			$_SESSION['rol']="Estudiante";
			break;
		case 8:
			$_SESSION['nombreGrado']="2do";
			$_SESSION['nivel']="Básico";
			$_SESSION['rol']="Estudiante";
			break;
		case 9:
			$_SESSION['nombreGrado']="3ro";
			$_SESSION['nivel']="Básico";
			$_SESSION['rol']="Estudiante";
			break;
		case 10:
			$_SESSION['nombreGrado']="4to";
			$_SESSION['nivel']="Diversificado";
			$_SESSION['rol']="Estudiante";
			break;
		case 11:
			$_SESSION['nombreGrado']="5to";
			$_SESSION['nivel']="Diversificado";
			$_SESSION['rol']="Estudiante";
			break;	
		case 12:
			$_SESSION['nombreGrado']="6to";
			$_SESSION['nivel']="Diversificado";
			$_SESSION['rol']="Estudiante";
			break;		
		
		default:
			$_SESSION['rol']="Docente";
			$_SESSION['nombreGrado']="Sin Grado";
			break;
	}

//indicamos que pasa cuando no hay seccion si ubiese solo se setea el mismo
switch ($_SESSION["seccion"]) {
	case '':
		$_SESSION["seccionNew"]="Sin Seccion";
		break;
	
	default:
		$_SESSION["seccionNew"]=$_SESSION["seccion"];
		break;
}


	//redireccionamos segun el tipo de usuario y le mandamos los datos 
switch ($_SESSION["tipoUsuario"]) {
	case 1:
		switch ($_SESSION["grado"]) {
			case 1:
				header("location:../cursosAlumno/misCursos.php");
				break;

			case 2:
				header("location:../cursosAlumno/misCursos.php");
				break;

			case 3:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 4:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 5:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 6:
				header("location:../cursosAlumno/misCursos.php");
				break;
			
			case 7:
				header("location:../cursosAlumno/misCursos.php");
				break;

			case 8:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 9:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 10:
				header("location:../cursosAlumno/misCursos.php");
				break;
			case 11:
				header("location:../cursosAlumno/misCursos.php");
				break;
			
			default:
				header("location:../index.php");
				break;
		}

		break;

	case 2:
		header("location:../cursosDocente/misCursos.php");
		break;
	case 3:
		header("location:../cursosCoordinacion/misCursos.php");	
		break;
	
	default:
		header("location:../cursosPadres/misCursos.php");
		break;
}



}else{

	header("location:../index.php");
}
// en la base de datos el tipo de usuario se toma como 1=alumno 2=profesor 3=coordinador












?>