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


import model.Endereco;
import service.EnderecoService;

/**
 * Servlet implementation class ManterUsuarioController
 */
@WebServlet("/ManterCadastroEndereco.do")
public class ManterCadastroEndereco extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pId = request.getParameter("id");
		String pAcao = request.getParameter("acao");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}
		
		Endereco endereco = new Endereco();
		endereco.setId(id);
		EnderecoService es = new EnderecoService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		if (pAcao.equals("Criar") ||pAcao.equals("Alterar")) {	
			int pIdUsuario = Integer.parseInt(request.getParameter("idusuario"));
			String pTipoDeEndereco = request.getParameter("tipodeendereco");
			String pCEP = request.getParameter("cep");
			String pEndereco = request.getParameter("endereco");
			String pEstado = request.getParameter("estado");
			String pCidade = request.getParameter("cidade");
			String pNumero = request.getParameter("numero");
			String pComplemento = request.getParameter("complemento");
			
			endereco.setIdusuario(pIdUsuario);
			endereco.setTipodeendereco(pTipoDeEndereco);
			endereco.setCep(pCEP );
			endereco.setEndereco(pEndereco);
			endereco.setEstado(pEstado);
			endereco.setCidade(pCidade);
			endereco.setNumero(pNumero);
			endereco.setComplemento(pComplemento);
		}
		
		if (pAcao.equals("Criar")) {
			es.criar(endereco);
			ArrayList<Endereco> lista = new ArrayList<>();
			lista.add(endereco);
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarEndereco.jsp");
		} else if (pAcao.equals("Excluir")) {
			es.excluir(endereco.getId());
			@SuppressWarnings("unchecked")
			ArrayList<Endereco> lista = (ArrayList<Endereco>)session.getAttribute("lista");
			lista.remove(busca(endereco, lista));
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarEndereco.jsp");			
		} else if (pAcao.equals("Alterar")) {
			es.atualizar(endereco);
			@SuppressWarnings("unchecked")
			ArrayList<Endereco> lista = (ArrayList<Endereco>)session.getAttribute("lista");
			int pos = busca(endereco, lista);
			lista.remove(pos);
			lista.add(pos, endereco);
			session.setAttribute("lista", lista);
			request.setAttribute("endereco", endereco);
			view = request.getRequestDispatcher("VisualizarEndereco.jsp");			
		} else if (pAcao.equals("Visualizar")) {
			endereco = es.carregar(endereco.getId());
			request.setAttribute("endereco", endereco);
			view = request.getRequestDispatcher("VisualizarEndereco.jsp");		
		} else if (pAcao.equals("Editar")) {
			endereco = es.carregar(endereco.getId());
			request.setAttribute("endereco", endereco);
			view = request.getRequestDispatcher("AlterarEndereco.jsp");		
		}
		
		view.forward(request, response);

	}

	public int busca(Endereco endereco, ArrayList<Endereco> lista) {
		Endereco to;
		for(int i = 0; i < lista.size(); i++){
			to = lista.get(i);
			if(to.getId() == endereco.getId()){
				return i;
			}
		}
		return -1;
	}
}

        


