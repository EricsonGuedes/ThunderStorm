package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UsuarioService;

@WebServlet("/ManterLogado.do")
public class ManterLogadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		UsuarioService user = new UsuarioService();
		
		if (user.check(usuario, senha) != null) {
			HttpSession session = request.getSession();
			session.setAttribute("usuario", user.check(usuario, senha)); 
			response.sendRedirect("TelaInicial.jsp");
		}else {
			response.sendRedirect("Login.jsp");
		}
	}
}
