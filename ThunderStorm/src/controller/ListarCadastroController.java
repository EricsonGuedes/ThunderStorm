package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.EnderecoService;
import model.Endereco;

/**
 * Servlet implementation class ListarClientesController
 */
@WebServlet("/listar_enderecos.do")
public class ListarCadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int idUsuario = Integer.parseInt(request.getParameter("idusuario"));
		String acao = request.getParameter("acao");
		EnderecoService enderecoService = new EnderecoService();
		ArrayList<Endereco> lista = null;
		HttpSession session = request.getSession();
		if (acao.equals("buscar")) {
			if (idUsuario > 0) {
				lista = enderecoService.listarEndereco(idUsuario);
			}
			session.setAttribute("lista", lista);
		} else if (acao.equals("reiniciar")) {
			session.setAttribute("lista", null);
		}

		RequestDispatcher dispatcher = request
				.getRequestDispatcher("ListarEndereco.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
