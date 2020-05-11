<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
	<%
   		PrintWriter es = response.getWriter();
		
			es.println("<nav class='navbar navbar-expand-sm fixed-top navbar-dark bg-dark'>");
	  			es.println("<a class='navbar-brand' href='#'>");
	  			es.println("<img src='Image/logolight.png' width='135' height='30' alt=''>");
	  			es.println("</a>");
	  			es.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target=''#navbarNavDropdown' aria-controls='navbarNavDropdown' aria-expanded='false' aria-label='Toggle navigation'>");
	  				es.println("<span class='navbar-toggler-icon'></span>");
	  			es.println("</button>");
	  			es.println("<div class='collapse navbar-collapse' id='navbarNavDropdown'>");
	    		es.println("<ul class='navbar-nav'>"); 		     		
	      		
	    	if (session.getAttribute("usuario") != null){
	    		
		     		es.println("<li class='nav-item'>");	
		     			es.println("<a href='TelaInicial.jsp' class='nav-link' >Página Inicial <span class='sr-only'>(current)</span></a>");
		     		es.println("</li>");
		     		es.println("<li class='nav-item dropdown'>");
		     			es.println("<a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Meus Endereços");
		     			es.println("</a>");
		     			es.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>");
		     				es.println("<a class='dropdown-item' href='ListarEndereco.jsp'>Cadastrados</a>");
		     				es.println("<a class='dropdown-item' href='Endereco.jsp'>Cadastrar Novo</a>");	
		     			es.println("</div>");
		     		es.println("</li>");
		     		es.println("<li class='nav-item dropdown'>");
	     			es.println("<a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Meu Perfil");
	     			es.println("</a>");
	     			es.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>");
	     				es.println("<a class='dropdown-item' href='Usuario.jsp'>Gerenciar conta</a>");
	     				es.println("<a class='dropdown-item' href='#'>Alterar senha</a>");
	     				es.println("<a class='dropdown-item' href='Login.jsp'>Sair</a>");
	     			es.println("</div>");
	     		es.println("</li>");
	     		
	    	}
    			es.println("</ul>");
			es.println("</div>");
			es.println("</nav>");
			es.println("<br>");
			es.println("<br>");
	    %>