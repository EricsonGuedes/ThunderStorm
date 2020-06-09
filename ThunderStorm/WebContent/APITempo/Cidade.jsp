<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<div class="hg-weather" data-key="7e7468d9"
	data-woeid="${usuario.cidade}">
	<span hidden data-weather="message">Obtendo...</span> <span
		data-weather="city">Obtendo cidade</span> <span 
		data-weather="temp">00</span>º C<br> <span
		hidden data-weather="description">Obtendo tempo...</span><br> <small
		hidden class="form-text text-muted">Nascer do Sol: <span
		hidden data-weather="sunrise">00:00</span> - Pôr do Sol: <span
		hidden data-weather="sunset">00:00</span><br></small> <small
		hidden class="form-text text-muted">Velocidade do vento: <span
		hidden data-weather="wind_speedy">-- km/h</span><br></small> <img
		hidden src="http://assets.api.hgbrasil.com/weather/images/44.png"
		data-weather="image">
</div>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		HGWeather.initialize();
	});
</script>
</html>