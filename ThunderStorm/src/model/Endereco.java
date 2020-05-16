package model;

import java.io.Serializable;

public class Endereco implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private int idusuario;
	private String tipodeendereco;
	private String cep;
	private String endereco;
	private String estado;
	private String cidade;
	private String numero;
	private String complemento;
	
	public Endereco() {
	}
	
	public Endereco(int id, int idusuario, String tipodeendereco, String cep, String endereco, String estado, String cidade, String numero, String complemento) {
		  this.id = id;
		  this.idusuario = idusuario;
		  this.tipodeendereco = tipodeendereco;
		  this.cep = cep;
		  this.endereco = endereco;
		  this.estado = estado;
		  this.cidade = cidade;
		  this.numero = numero;
		  this.complemento = complemento;
		}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getTipodeendereco() {
		return tipodeendereco;
	}

	public void setTipodeendereco(String tipodeendereco) {
		this.tipodeendereco = tipodeendereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Endereco [id=" + id + ", idusuario=" + idusuario + ", tipodeendereco=" + tipodeendereco + ", cep=" + cep
				+ ", endereco=" + endereco + ", estado=" + estado + ", cidade=" + cidade + ", numero=" + numero
				+ ", complemento=" + complemento + "]";
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Endereco other = (Endereco) obj;
		if (cep == null) {
			if (other.cep != null)
				return false;
		} else if (!cep.equals(other.cep))
			return false;
		if (cidade == null) {
			if (other.cidade != null)
				return false;
		} else if (!cidade.equals(other.cidade))
			return false;
		if (complemento == null) {
			if (other.complemento != null)
				return false;
		} else if (!complemento.equals(other.complemento))
			return false;
		if (endereco == null) {
			if (other.endereco != null)
				return false;
		} else if (!endereco.equals(other.endereco))
			return false;
		if (estado == null) {
			if (other.estado != null)
				return false;
		} else if (!estado.equals(other.estado))
			return false;
		if (id != other.id)
			return false;
		if (idusuario != other.idusuario)
			return false;
		if (numero == null) {
			if (other.numero != null)
				return false;
		} else if (!numero.equals(other.numero))
			return false;
		if (tipodeendereco == null) {
			if (other.tipodeendereco != null)
				return false;
		} else if (!tipodeendereco.equals(other.tipodeendereco))
			return false;
		return true;
	}	
}

