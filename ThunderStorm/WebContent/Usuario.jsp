<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visualizar Usuario</title>
	
	<script src="js/hg-weather.js" type="text/javascript"></script>
	<style type="text/css" media="screen">
      body { font-family: Arial; }
      .hg-weather { border-radius: 3px; padding: 15px; display: inline-block; }

      .hg-weather.clear_day { background-color: #217CAF; color: white; }
      .hg-weather.clear_night { background-color: #555; color: white; }
      .hg-weather.cloudly_day, .hg-weather.fog, .hg-weather.rain, .hg-weather.storm { background-color: #ddd; }
      .hg-weather.cloudly_night { background-color: #444; color: white; }
    </style>
	
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
		if(session.getAttribute("usuario") == null){
			response.sendRedirect("Login.jsp");
		}
	%>
        <!-- Barra superior com os menus de navegação -->
		<c:import url="Menu.jsp"/>
		<br>
        <!-- Container Principal -->
        <div id="main" class="container">
            <h3 class="page-header">Visualizar Usuario #${usuario.id}</h3>
            <div class="row">
                <div class="col-md-12">
                    <p><strong>Usuário</strong>
                    </p>
                    <p>
                        ${usuario.nome}
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <p><strong>Sobrenome</strong>
                    </p>
                    <p>
                        ${usuario.sobrenome}
                    </p>
                </div>
                <div class="col-md-6">
                    <p><strong>Username</strong>
                    </p>
                    <p>
                        ${usuario.username}
                    </p>
                </div>
                <div class="hg-weather" data-key="f40c0d01" data-woeid="${usuario.cidade}">
				    <span data-weather="message">Obtendo...<br></span>
				
				    <span data-weather="city">Obtendo cidade</span> <span data-weather="temp">00</span>º C<br>
				    <span data-weather="description">Obtendo tempo...</span><br>
				    <small class="form-text text-muted">Nascer do Sol: <span data-weather="sunrise">00:00</span> - Pôr do Sol: <span data-weather="sunset">00:00</span><br></small>
				    <small class="form-text text-muted">Velocidade do vento: <span data-weather="wind_speedy">-- km/h</span><br></small>
				    <img src="http://assets.api.hgbrasil.com/weather/images/44.png" data-weather="image">
    			</div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <a href="Login.jsp" class="btn btn-primary" >Voltar</a>
                </div>
            </div>
        </div>
    <script>
      document.addEventListener("DOMContentLoaded", function() {
        HGWeather.initialize();
      });
    </script>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>

</html>