<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
		<title>Login</title>
		<meta charset="utf-8">
	    <link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<% session.invalidate();%>
		<c:import url="Menu.jsp"/>
		<br>
		<div id="main" class="container">
  			<h3 class="page-header">Login</h3>
			<form action ="ManterLogado.do" method="post">
				<div class="row">
					<div class="form-group col-md-12">
						<label for="usuario">Usuário</label>
						<input type="text" name="usuario" class="form-control" maxlength="15" required placeholder="Usuário">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="senha">Senha</label>
						<input type="password" name="senha" class="form-control" required maxlength="20" placeholder="Senha">
					</div>
				</div>
				<hr />
				<div id="actions" class="row">
					<div class="col-md-12">
						<input class="btn btn-primary" type="submit" value="Logar">
						<a href="Cadastro.jsp" class="btn btn-secondary" style="color:black ">Cadastre-se</a>
					</div>
				</div>
			</form>
	  	</div>
	  	<script src="js/jquery.min.js"></script>
    	<script src="js/bootstrap.min.js"></script>
	</body>
</html>