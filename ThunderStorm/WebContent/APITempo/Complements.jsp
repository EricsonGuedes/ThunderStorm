<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<div class="hg-weather" data-key="f40c0d01"
	data-woeid="${usuario.cidade}">
	<span hidden data-weather="message">Obtendo...</span> <span
		hidden data-weather="city">Obtendo cidade</span> <span 
		hidden data-weather="temp">00</span> <span
		hidden data-weather="description">Obtendo tempo...</span> <div
		class="form-text text-muted">Nascer do Sol: <span
		data-weather="sunrise">00:00</span> - Pôr do Sol: <span
		data-weather="sunset">00:00</span><br></div> <div
		class="form-text text-muted">Velocidade do vento: <span
		data-weather="wind_speedy">-- km/h</span><br></div> <img
		hidden src="http://assets.api.hgbrasil.com/weather/images/44.png"
		data-weather="image">
</div>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		HGWeather.initialize();
	});
</script>
</html>