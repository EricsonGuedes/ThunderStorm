<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Area Logada</title>
	</head>
	<body>
		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidade");
			if(session.getAttribute("username") == null){
				response.sendRedirect("Login.jsp");
			}
		%>
		Salve ${username}
	</body>
</html>