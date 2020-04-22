<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
	<%
   		PrintWriter es = response.getWriter();
			es.println("<nav class='navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark'>");
	  			es.println("<a class='navbar-brand' href='#'>ThunderStorm</a>");
	  			es.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target=''#navbarNavAltMarkup' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>");
	  				es.println("<span class='navbar-toggler-icon'></span>");
	  			es.println("</button>");
	  			es.println("<div class='collapse navbar-collapse' id='navbarNavAltMarkup'>");
	     			es.println("<div class='navbar-nav'>");
	      			es.println("<a class='nav-item nav-link active' href='#' aria-disabled='true'>Página inicial </a>");
	      			es.println("<a class='nav-item nav-link' href='Login.jsp'>Login<span class='sr-only'>(current)</span></a>");
	      		
	    	if (session.getAttribute("usuario") != null){
		      		es.println("<a class='nav-item nav-link' href='#' tabindex='-1' aria-disabled='true'>Cadastrar endereços</a>");
		      		es.println("<a class='nav-item nav-link' href='#' tabindex='-1' aria-disabled='true'>Perfil</a>");
	    	}
    			es.println("</div>");
			es.println("</div>");
			es.println("</nav>");
	    %>