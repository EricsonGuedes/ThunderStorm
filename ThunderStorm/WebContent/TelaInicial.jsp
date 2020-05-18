<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCKTYPE html>
<html lang="pt-br">

<head>
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

<script src="//cdn.pushbots.com/js/sdk.min.js" type="text/javascript" onload="PB.init()" async></script>
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

 API 
<script src="js/hg-weather.js" type="text/javascript"></script>
<!-- <style type="text/css" media="screen">
body {
	font-family: Arial;
}

.hg-weather {
	border-radius: 3px;
	padding: 15px;
	display: inline-block;
}

.hg-weather.clear_day {
	background-color: #217CAF;
	color: white;
}

.hg-weather.clear_night {
	background-color: #555;
	color: white;
}

.hg-weather.cloudly_day, .hg-weather.fog, .hg-weather.rain, .hg-weather.storm
	{
	background-color: #ddd;
}

.hg-weather.cloudly_night {
	background-color: #444;
	color: white;
}
</style>-->
<style>
html {
	scroll-behavior: smooth;
}

#tempo {
	
}
</style>

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
					<a class="btn btn-outline-light btn-md" href="#Tempo" role="button">Como
						está o clima</a>
				</div>
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="Image/image3.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption text-right d-none d-lg-block">
					<h1 class=>Para onde vamos hoje?</h1>
					<h4 class="lead">Defina a melhor rota para seu antes de irmos.</h4>
					<a class="btn btn-outline-light btn-md" href="#" role="button">Meus
						lugares</a> <a class="btn btn-dark btn-md" href="#" role="button">Novos
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

	<!-- Tempo -->
	<br id="Tempo">
	<hr class="container">
	<br>
		<div  class="container">
			<div class="card mb-3" style="max-width: 540px;">
			  <div class="row no-gutters">
			    <div class="col-md-4">
			    	<br>
			    	<br>
			     	<c:import url="APITempo/Imagem.jsp"/>      
			    </div>
			    <div class="col-md-8">
			      <div class="card-body">
			      	<strong class="d-inline-block mb-2 text-primary">Tempo</strong>
			        <h3 class="mb-0"><c:import url="APITempo/Cidade.jsp"/></h3>
			        <div class="mb-1 text-muted"><c:import url="APITempo/Descricao.jsp"/></div>
			        <p class="card-text mb-auto"><c:import url="APITempo/Complements.jsp"/></p>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
</div>
</body>
</html>
