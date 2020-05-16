<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" href="Image/Icon.ico" type="image/x-icon" />
<title>Login</title>
<meta charset="utf-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<style type="text/css">
html, body {
	height: 100%;
}

body {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-image: url("Image/backlogin.jpg");
	background-repeat: no-repeat;
	background-size: 1500px 1000px;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>

</head>
<body class="text-center">
	<% session.invalidate();%>
		<form id="main" class="form-signin" action ="ManterLogado.do" method="post">
			<img class="mb-4" src="Image/logolight.png" alt=""	width="300" height="90"> 
			<label for="usuario" class="sr-only">Usuário</label>
			<input type="email" name="usuario"	class="form-control" placeholder="Usuário" required="" autofocus="">
			<label for="senha" class="sr-only">Senha</label> 
			<input type="password" name="senha" class="form-control" placeholder="Senha" required="">
			
			<div id="actions">
				<div>
					<input class="btn btn-primary btn-block" type="submit" value="Entrar">
				</div>
			</div>
		</form>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>

</html>