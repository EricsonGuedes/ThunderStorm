package dao;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDAO {
	
	public int criar(Usuario usuario) {
		String sqlInsert = "INSERT INTO usuario(nome, sobrenome, username, email, senha, sexo, cep, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			
			// Iniciando criptografia
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte messageDigest[] = md.digest(usuario.getSenha().getBytes("UTF-8"));
			
			StringBuilder sb = new StringBuilder();
			
			for(byte b : messageDigest) {
				sb.append(String.format("%02X", 0xFF & b));
			}
			String senhaCript = sb.toString();
			//Finalização da criptografia
			
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getSobrenome());
			stm.setString(3, usuario.getUsername());
			stm.setString(4, usuario.getEmail());
			stm.setString(5, senhaCript);
			stm.setString(6, usuario.getSexo());
			stm.setString(7, usuario.getCep());
			stm.setString(8, usuario.getCidade());
			stm.setString(9, usuario.getEstado());
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					usuario.setId(rs.getInt(1));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return usuario.getId();
	}

	public void atualizar(Usuario usuario) {
		String sqlUpdate = "UPDATE usuario SET nome=?, sobrenome=?, username=?, email=?, senha=?, sexo=?, cep=?, cidade=?, estado=? WHERE id=?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getSobrenome());
			stm.setString(3, usuario.getUsername());
			stm.setString(4, usuario.getEmail());
			stm.setString(5, usuario.getSenha());
			stm.setString(6, usuario.getSexo());
			stm.setString(7, usuario.getCep());
			stm.setString(8, usuario.getCidade());
			stm.setString(9, usuario.getEstado());
			stm.setInt(10, usuario.getId());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public void excluir(int id) {
		String sqlDelete = "DELETE FROM usuario WHERE id = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Usuario carregar(int id) {
		Usuario usuario = new Usuario();
		usuario.setId(id);
		String sqlSelect = "SELECT nome, sobrenome, username, email, senha, sexo, cep, cidade, estado FROM usuario WHERE usuario.id = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, usuario.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					usuario.setNome(rs.getString("nome"));
					usuario.setSobrenome(rs.getString("sobrenome"));
					usuario.setUsername(rs.getString("username"));
					usuario.setEmail(rs.getString("email"));
					usuario.setSenha(rs.getString("senha"));
					usuario.setSexo(rs.getString("sexo"));
					usuario.setCep(rs.getString("cep"));
					usuario.setCidade(rs.getString("cidade"));
					usuario.setEstado(rs.getString("estado"));
				} else {
					usuario.setId(-1);
					usuario.setNome(null);
					usuario.setSobrenome(null);
					usuario.setUsername(null);
					usuario.setEmail(null);
					usuario.setSenha(null);
					usuario.setSexo(null);
					usuario.setCep(null);
					usuario.setCidade(null);
					usuario.setEstado(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return usuario;
	}
	
	public boolean check(String username, String senha){
		
		String sqlSelect = "SELECT * FROM usuario WHERE username=? and senha=?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				
				// Iniciando criptografia
				MessageDigest md = MessageDigest.getInstance("SHA-256");
				byte messageDigest[] = md.digest(senha.getBytes("UTF-8"));
				
				StringBuilder sb = new StringBuilder();
				
				for(byte b : messageDigest) {
					sb.append(String.format("%02X", 0xFF & b));
				}
				String senhaCript = sb.toString();
				//Finalização da criptografia

				stm.setString(1, username);
				stm.setString(2, senhaCript);
				ResultSet rs = stm.executeQuery();
				if(rs.next()) {
					return true;
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
