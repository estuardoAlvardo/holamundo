<!DOCTYPE html>
<html lang="es">
<head>
	<title>Atomo - Entrar</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
        
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">				
				<h4 class="col-xs-4 col-md-12 text-center" style="margin-top: -100px;">Atom Asistencia</h4>
			<div>
      <div id="app">
      <div class="sidebar">

        <section class="scans">
          <h4>Escaneo de Asistencia</h4>
          <ul v-if="scans.length === 0">
            <li class="empty" style="background-color: #e67e22; padding-left: 15px; color: white; margin-bottom: 20px; border-radius: 10px;">No se ha detectado Ninguna Asistencia</li>
          </ul>
          <transition-group name="scans" tag="ul">
          	 
            <li v-for="scan in scans" :key="scan.date" :title="scan.content" style="background-color: #2ecc71; padding-left: 15px; color: white; margin-bottom: 20px; border-radius: 10px; color:white;">{{ scan.content }}
            	<audio src="docs/rin1.mp3" autoplay></audio>
            </li>
             
          </transition-group>
        </section>
      </div>
      <div class="preview-container">
        <video id="preview" class="col-md-12 col-xs-4"></video>
      </div>
              <section class="cameras">
          <h2>Camara detectada</h2>
          <ul>
            <li v-if="cameras.length === 0" class="empty">No hay camara conectada</li>
            <li v-for="camera in cameras">
              <span v-if="camera.id == activeCameraId" :title="formatName(camera.name)" class="active">{{ formatName(camera.name) }}</span>
              <span v-if="camera.id != activeCameraId" :title="formatName(camera.name)">
                <a @click.stop="selectCamera(camera)">{{ formatName(camera.name) }}</a>
              </span>
            </li>
          </ul>
        </section>
    </div>
    <script type="text/javascript" src="docs/app.js"></script>
			</div>
				
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script type="text/javascript">

	</script>
	<script src="qr-scanner-master/qr-scanner.min.js"></script>


</body>
</html>