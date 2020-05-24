<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<div class="hg-weather" data-key="77a249ec"
	data-woeid="${usuario.cidade}">
	<span hidden data-weather="message">Obtendo...</span> <span
		hidden data-weather="city">Obtendo cidade</span> <span 
		hidden data-weather="temp">00</span> <span
		hidden data-weather="description">Obtendo tempo...</span> <small
		hidden class="form-text text-muted">Nascer do Sol: <span
		hidden data-weather="sunrise">00:00</span> - P�r do Sol: <span
		hidden data-weather="sunset">00:00</span></small> <small
		hidden class="form-text text-muted">Velocidade do vento: <span
		hidden data-weather="wind_speedy">-- km/h</span></small> <img
		src="http://assets.api.hgbrasil.com/weather/images/44.png"
		data-weather="image">
</div>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		HGWeather.initialize();
	});
</script>
</html>