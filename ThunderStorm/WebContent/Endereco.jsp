<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
		<title>Novo endereço</title>
		<meta charset="utf-8">
	            <!-- CSS -->
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			crossorigin="anonymous">
			
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
			
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
		<meta http-equiv=”Content-Type” content=”text/html; charset=iso-8859-1″>
	</head>
	<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
		if (session.getAttribute("usuario") == null) {
			response.sendRedirect("Login.jsp");
		}
	%>
		<c:import url="Menu.jsp"/>
		<br>
		<div id="main" class="container">
			<h2 class="page-header">Cadastro de Endereço</h2>
			<form action ="ManterCadastroEndereco.do" method="post">
				<div class="row">
					<!-- Colocar id de usuário real depoiss -->
					<input type="hidden" name="idusuario" value="${usuario.id }" />
					<div class="form-group col-md-4 mb-3">
						<label for="tipodeendereco">Tipo de Endereço:</label>
						<input type="text" name="tipodeendereco" class="form-control" maxlength="30" required placeholder="Ex.: Academia, Casa, Trabalho, etc...">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="cep">CEP:</label>
						<input type="text" name="cep" class="form-control" maxlength="9" required placeholder="Ex.: 00000-000">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="endereco">Endereço:</label>
						<input type="text" name="endereco" class="form-control" maxlength="50" required placeholder="Endereço">
					</div>
					<div class="col-md-3 mb-3">
				      	<label for="validationDefault04">Estado:</label>
				      	<select class="custom-select" id="validationDefault04" name="estado" required>
				        	<option selected disabled value="">Selecione o estado</option>
				        	<option value="AC">AC</option>
							<option value="AL">AL</option>
							<option value="AP">AP</option>
							<option value="AM">AM</option>
							<option value="BA">BA</option>
							<option value="CE">CE</option>
							<option value="DF">DF</option>
							<option value="ES">ES</option>	
							<option value="GO">GO</option>
							<option value="MA">MA</option>
							<option value="MT">MT</option>
							<option value="MS">MS</option>
							<option value="MG">MG</option>
							<option value="PA">PA</option>
							<option value="PB">PB</option>
							<option value="PR">PR</option>
							<option value="PE">PE</option>
							<option value="PI">PI</option>
							<option value="RJ">RJ</option>
							<option value="RN">RN</option>
							<option value="RS">RS</option>
							<option value="RO">RO</option>
							<option value="RR">RR</option>
							<option value="SC">SC</option>
							<option value="SP">SP</option>
							<option value="SE">SE</option>
							<option value="TO">TO</option>
				     	 </select>
				    </div>
					<div class="form-group col-md-4 mb-3">
						<label for="cidade">Cidade:</label>
						<input type="text" name="cidade" class="form-control" maxlength="20" required placeholder="Cidade">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="numero">Número:</label>
						<input type="text" name="numero" class="form-control" maxlength="5" required placeholder="Número">
					</div>
					<div class="form-group col-md-4 mb-3">
						<label for="complemento">Complemento:</label>
						<input type="text" name="complemento" class="form-control" maxlength="20" placeholder="Complemento">
					</div>
				</div>		
			<input type="submit" value="Criar" name="acao" class="btn btn-outline-primary">
			<a href="#" onclick="history.go(-1);" class="btn btn-outline-dark">Voltar</a> 
			</form>
		</div>
		<script src="js/jquery.min.js"></script>
    	<script src="js/bootstrap.min.js"></script>
	</body>
</html>