<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quem Somos</title>
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
	<style>
	body {
	background-color: #F7F9F9;
	}
	</style>
</head>
<body>
	
	<c:import url="MenuLogin.jsp"/>

	<main role="main" class="container">
	  <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-dark rounded shadow">
	    <img class="mr-3" src="Image/thunder (1).png" alt="" width="48" height="48">
	    <div class="lh-100">
	      <h6 class="mb-0 text-white lh-100">ThunderStorm</h6>
	      <small>Criado em 2020</small>
	    </div>
	  </div>
	
	  <div class="my-3 p-3 bg-white rounded shadow">
	    <h6 class="border-bottom border-gray pb-2 mb-0">Descrição do projeto</h6>
	    <div class="media text-muted pt-3">
	      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        Website capaz de captar informações de banco de dados meteorológicos e reunir com dados de trânsito coletados do Google Maps, permitindo que este de forma clara e intuitiva transmita ao usuário informações de trânsito e tempo em seus percursos cotidianos sugerindo ao mesmo que tome rotas e medidas que trarão maior conforto e agilidade.
	      </p>
	    </div>
	  </div>
	
	  <div class="my-3 p-3 bg-white rounded shadow-sm">
	    <h6 class="border-bottom border-gray pb-2 mb-0">Integrantes</h6>
	    <div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/renato.jpg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Renato Giacomini</strong>
	        </div>
	        <span class="d-block">Orientador</span>
	      </div>
	    </div>
	    <div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/caio.jpg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Caio Bueno</strong>
	        </div>
	        <span class="d-block">RA: 819229668</span>
	      </div>
	    </div>
	    <div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/cadu.jpg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Carlos Eduardo Mendes dos Santos</strong>
	        </div>
	        <span class="d-block">RA: 817123279</span>
	      </div>
	    </div>
	    <div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/ericson1.jpeg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Ericson Henrique Azevedo Guedes</strong>
	        </div>
	        <span class="d-block">RA: 817124353</span>
	      </div>
	    </div>
		<div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/guilherme1.jpeg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Guilherme Pereira Corrêa</strong>
	        </div>
	        <span class="d-block">RA: 81715215</span>
	      </div>
	    </div>
	    <div class="media text-muted pt-3">
	      <img class="mr-3 rounded" src="Image/lucas1.jpeg" alt="" width="32" height="32">
	      <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
	        <div class="d-flex justify-content-between align-items-center w-100">
	          <strong class="text-gray-dark">Lucas Arthur Chagas Feitosa</strong>
	        </div>
	        <span class="d-block">RA: 816155503</span>
	      </div>
	    </div>
	  </div>
	</main>

</body>
</html>