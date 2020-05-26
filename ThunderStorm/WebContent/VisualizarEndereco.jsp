<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <script src="http://code.jquery.com/jquery-1.8.1.js" type="text/javascript"></script>
    		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZE945NKrAdxNQ2F-zcolQfi4TvRsjatE" type="text/javascript">
    		button.onclick = function() {
    			  var startPos;
    			  var element = document.getElementById("nudge");

    			  var showNudgeBanner = function() {
    			    nudge.style.display = "block";
    			  };

    			  var hideNudgeBanner = function() {
    			    nudge.style.display = "none";
    			  };

    			  var nudgeTimeoutId = setTimeout(showNudgeBanner, 5000);

    			  var geoSuccess = function(position) {
    			    hideNudgeBanner();
    			    // We have the location, don't display banner
    			    clearTimeout(nudgeTimeoutId); 

    			    // Do magic with location
    			    startPos = position;
    			    document.getElementById('startLat').innerHTML = startPos.coords.latitude;
    			    document.getElementById('startLon').innerHTML = startPos.coords.longitude;
    			  };
    			  var geoError = function(error) {
    			    switch(error.code) {
    			      case error.TIMEOUT:
    			        // The user didn't accept the callout
    			        showNudgeBanner();
    			        break;
    			  };

    			  navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
    			};
    		</script>
            <title>Visualizar Endereço</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>
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
        <body>
	        <%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
			if (session.getAttribute("usuario") == null) {
				response.sendRedirect("Login.jsp");
			}
			%>
			<script src="http://maps.google.com/maps/api/js?sensor=AIzaSyAZE945NKrAdxNQ2F-zcolQfi4TvRsjatE"></script>
			<script src="http://maps.google.com/maps/api/js?key=AIzaSyAZE945NKrAdxNQ2F-zcolQfi4TvRsjatE" type="text/javascript"></script>
    <script type="text/javascript">
    
    document.addEventListener('DOMContentLoaded', function(){

        
        navigator.geolocation.getCurrentPosition(function(position) {

            var latitude   = position.coords.latitude;
            var longitude  = position.coords.longitude;
            var coordinate = new google.maps.LatLng(latitude, longitude);

            document.getElementById('txtOrigem').value = "" + latitude + "," + longitude + "";

            

        });
    });
      function CalculaDistancia() {
        $('#litResultado').html('Aguarde...');
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
            $("#txtOrigemResultado").val('Você está em ' + response.originAddresses);
            $("#txtDestinoResultado").val(response.destinationAddresses);
            $("#txtDistancia").val(response.rows[0].elements[0].distance.text);
            var tempo = response.rows[0].elements[0].duration.text;
            tempo = tempo.replace("day", "dia").replace("hour", "hora").replace("min", "minuto");
            $("#txtTempo").val(tempo);

            //Atualizar o mapa.
            $("#map").attr("src", "https://maps.google.com/maps?saddr=" + response.originAddresses + "&daddr=" + response.destinationAddresses + "&output=embed");
        }
      }
    </script>

                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
				<br>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">${endereco.tipodeendereco }</h3>
                    <div class="row">
                       </div> 
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Endereço: </strong>
                                ${endereco.endereco }, ${endereco.numero } - ${endereco.cidade } - ${endereco.estado } -
                                <strong>Cep: </strong> ${endereco.cep } 
                                <p> <strong>Complemento: </strong>${endereco.complemento }</p>
                                <strong id="txtOrigemResultado"></strong>
                                <div class="row">
					      		<input class="form-control" name="pesquisaOrigem" type="hidden" id="txtOrigem" class="field" style="width: 400px"  />
					      		<input class="btn btn-outline-primary" type="button" value="Calcular Rota" onclick="CalculaDistancia()"/>
					      		</div>
					      		<input class="form-control" name="pesquisaDestino" type="hidden" id="txtDestino" class="field" style="width: 400px" value='${endereco.endereco }, ${endereco.numero } - ${endereco.cidade } - ${endereco.estado }' />
                        </div>
                    	</div>
                    	<div style="padding: 10px 0 0; clear: both">
      						<iframe width="1108" scrolling="no" height="550" frameborder="0" id="map" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?daddr=${endereco.endereco }, ${endereco.numero } - ${endereco.cidade } - ${endereco.estado }&output=embed"></iframe>
					      <br />
   						</div>
                    <hr />
                    <div id="actions" class="row">
                        <div class="col-md-12">
                            <a href="ManterCadastroEndereco.do?acao=Editar&id=${endereco.id }" class="btn btn-primary">Editar</a>
                            <a href="ListarEndereco.jsp" class="btn btn-dark">Voltar</a>
                        </div>
                    </div></div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>