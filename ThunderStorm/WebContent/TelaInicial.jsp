<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCKTYPE html>
<html lang="pt-br">

<head>
<script type="text/javascript">
    var _egoiwp = _egoiwp || {};
    (function(){
    var u="https://cdn-static.egoiapp2.com/";
    _egoiwp.code = "d8d1b87606d36cc0ca068c3e45957568";
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript';
    g.defer=true;
    g.async=true;
    g.src=u+'webpush.js';
    s.parentNode.insertBefore(g,s);
    })();
	</script>
<script>
//some default pre init
var PB = PB || {};PB.q = PB.q || [];PB.events = PB.events || [];

//PushBots ApplicationId (required)
PB.app_id = "5ec184b640e6f7440d1a6ca3";
//Your domain name, must be HTTPS or localhost  (required)
PB.domain = "WEBSITE_URL";
//Update and uncomment it if you are using custom safari certificate for your app
PB.safari_push_id = "web.com.pushbots.safaripush";
//****************************************

PB.logging_enabled = true;
PB.auto_subscribe = true;

//Custom worker and manifest URL
//PB.worker_url = PB.domain + "/pushbots-worker.js";

//Welcome notification message
PB.welcome = {title:"Welcome ",message:"Thanks for subscribing!", url :PB.domain};

function sendNotification(){
      PB.register();
      PB.q.push(["sendNotification", {title:"Hey ",message:"Why not?", url :"WEBSITE_URL"}]);
}

</script>

<script src="//cdn.pushbots.com/js/sdk.min.js" type="text/javascript"
	onload="PB.init()" async></script>
<link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tela Inicial</title>
<!-- CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<footer>
	<!-- JAVASCRIPT -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</footer>

<!--API tempo-->
<script src="js/hg-weather.js" type="text/javascript"></script>

<style>
html {
	scroll-behavior: smooth;
}

#Tempo 
#Mapa {
	
}

body {
	background-color: #F7F9F9;
}
</style>

<!--API Mapa-->
<script src="http://code.jquery.com/jquery-1.8.1.js"
	type="text/javascript"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key="
	type="text/javascript"></script>

<!-- Parâmetro sensor é utilizado somente em dispositivos com GPS -->
<script
	src="http://maps.google.com/maps/api/js?key="
	type="text/javascript"></script>
<script type="text/javascript">
      function CalculaDistancia() {
        $('#litResultado').html('Aguarde ${usuario.nome}...');
        // Instancia o DistanceMatrixService.
        var service = new google.maps.DistanceMatrixService();
        // Executa o DistanceMatrixService.
        service.getDistanceMatrix({
            origins: [$("#txtOrigem").val()], // Origem
            destinations: [$("#txtDestino").val()], // Destino
            travelMode: google.maps.TravelMode.DRIVING, // Modo (DRIVING | WALKING | BICYCLING)
            unitSystem: google.maps.UnitSystem.METRIC // Sistema de medida (METRIC | IMPERIAL)
        }, callback); // Vai chamar o callback
      }

      // Tratar o retorno do DistanceMatrixService
      function callback(response, status) {
        // Verificar o status.
        if (status != google.maps.DistanceMatrixStatus.OK) { // Se o status não for "OK".
            $("#litResultado").html(status);
        } else { // Se o status for "OK".
            $("#litResultado").html("&nbsp;"); // Remove o "aguarde".

            // Popula os campos.
            $("#txtOrigemResultado").html('Você está em ' + response.originAddresses);
            $("#txtDestinoResultado").html(' está indo para ' + response.destinationAddresses);
            $("#txtDistancia").html('${usuario.nome}, para percorrer a distância de ' + response.rows[0].elements[0].distance.text);
            var tempo = response.rows[0].elements[0].duration.text;
            $("#txtTempo").html(' você gastará ' + tempo);

            //Atualizar o mapa.
            $("#map").attr("src", "https://maps.google.com/maps?saddr=" + response.originAddresses + "&daddr=" + response.destinationAddresses + "&output=embed");
        }
      }
    </script>
</head>


<body>
	<!-- Content -->
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
		if (session.getAttribute("usuario") == null) {
			response.sendRedirect("Login.jsp");
		}
	%>
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp" />

	<!-- carousel -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="5000">
				<img src="Image/image.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption text-left d-none d-lg-block">
					<h1 class=>Seja bem-vindo, ${usuario.nome}!</h1>
					<h4 class="font-italic" class="lead">"Um amanhecer com clima
						nebuloso, não mexe com seu dia a não ser que você a assim o
						permita."</h4>
				</div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="Image/image2.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-lg-block">
					<h1>Se preparando para sair?</h1>
					<h4 class="lead">Antes de sair, informe-se quanto ao tempo na
						sua região.</h4>
					<a id="Tempo" class="btn btn-outline-light btn-md" href="#Tempo"
						role="button">Como está o clima</a>
				</div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="Image/image3.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption text-right d-none d-lg-block">
					<h1 class=>Para onde vamos hoje?</h1>
					<h4 class="lead">Defina a melhor rota para seu destino antes
						de irmos.</h4>
					<a class="btn btn-outline-light btn-md" href="ListarEndereco.jsp" role="button">Meus
						lugares</a> <a class="btn btn-dark btn-md" href="#Mapa" role="button">Novos
						horizontes</a>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>


	<br>
	<hr class="container">
	<br>
	<div class="container">
		<div class="shadow p-3 mb-5 bg-white rounded">
			<div class="row no-gutters">
				<div class="col-sm-2"></div>
				<div class="col-md-3">
					<br> <br>
					<c:import url="APITempo/Imagem.jsp" />
				</div>
				<div class="col-md-7">
					<div class="card-body">
						<strong class="d-inline-block mb-2 text-primary">Tempo</strong>
						<h3 class="mb-0">
							<c:import url="APITempo/Cidade.jsp" />
						</h3>
						<div class="mb-1 text-muted">
							<c:import url="APITempo/Descricao.jsp" />
						</div>
						<p class="card-text mb-auto">
							<c:import url="APITempo/Complements.jsp" />
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr class="container" id="Mapa">
	<br>
	<div class="container">
		<div class="shadow p-3 mb-5 bg-white rounded">
			<form class="container" action="http://www.example.com/url"
				method="post">
				<br>
				<div class="row">
					<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
					<h3 class="d-inline-block mb-2 text-primary">Vamos lá</h3>
				</div>
				<br>
				<!--<div><span>Pesquisa:</span></div> -->
				<div class="row">
					<div class="form-group col-md-1"></div>
					<div class="form-group col-md-4">
						<label for="txtOrigem"><strong>Onde você está?</strong></label> <input
							class="form-control" name="pesquisaOrigem" type="text"
							id="txtOrigem" class="field" style="width: 350px" />
					</div>
					<div class="form-group col-md-7">
						<label for="txtDestino"><strong>Onde vamos?</strong></label>
						<div class="row">
							<strong>&nbsp;&nbsp;&nbsp;</strong> <input class="form-control"
								name="pesquisaDestino" type="text" id="txtDestino" class="field"
								style="width: 350px" />
								<strong>&nbsp;&nbsp;</strong>
								<a href="#" onclick="CalculaDistancia()" class="btn btn-outline-primary"><svg class="bi bi-map" width="1.2em" height="1.2em" viewBox="0 0 19 19" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  								<path fill-rule="evenodd" d="M15.817.613A.5.5 0 0 1 16 1v13a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 14.51l-4.902.98A.5.5 0 0 1 0 15V2a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0l4.902.98 4.902-.98a.5.5 0 0 1 .415.103zM10 2.41l-4-.8v11.98l4 .8V2.41zm1 11.98l4-.8V1.61l-4 .8v11.98zm-6-.8V1.61l-4 .8v11.98l4-.8z"/>
								</svg>&nbsp;Calcular Rota</a>
						</div>
					</div>
				</div>
				<div>
					<span id="litResultado">&nbsp;</span>
				</div>
				<div class="container">
					<div class="container" class="row">
						<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong> <strong
							id="txtDistancia"></strong> <strong id="txtTempo"></strong>
					</div>
				</div>
			</form>
			<div class="container-fluid" align="center"
				style="padding: 10px 0 0; clear: both">
				<iframe align="center" class="rounded-lg" width="900" scrolling="no"height="500" frameborder="0" id="map" marginheight="0"marginwidth="0"src="https://maps.google.com/maps?saddr=&daddr=&output=embed"></iframe>
			</div>
			<br>
		</div>
	</div>
	<br>
</body>
</html>
