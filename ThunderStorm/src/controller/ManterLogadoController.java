package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDAO;

@WebServlet("/ManterLogado.do")
public class ManterLogadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		UsuarioDAO user = new UsuarioDAO();
		
		if (user.check(usuario, senha)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", usuario); 
			response.sendRedirect("AreaLogada.jsp");
		}else {
			response.sendRedirect("Login.jsp");
		}
	}


}
