package service;

import java.util.ArrayList;

import dao.EnderecoDAO;
import model.Endereco;

public class EnderecoService {
	EnderecoDAO dao = new EnderecoDAO();
	
	public int criar(Endereco endereco) {
		return dao.criar(endereco);
	}
	
	public void atualizar(Endereco endereco){
		dao.atualizar(endereco);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Endereco carregar(int id){
		return dao.carregar(id);
	}
	public ArrayList<Endereco> listarEndereco(){
		return dao.pesquisarEndereco();
	}
	public ArrayList<Endereco> listarEndereco(int idUsuario){
		return dao.pesquisarEndereco(idUsuario);
	}
	
}
