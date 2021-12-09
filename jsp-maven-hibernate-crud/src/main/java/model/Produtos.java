package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="produtos")

public class Produtos {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="titulo")
	protected String titulo;
	
	@Column(name="descricao")
	protected String descricao;
	
	@Column(name="preco")
	protected String preco;
	
	@Column(name="linkImagem")
	protected String linkImagem;

	public Produtos(int id, String titulo, String descricao, String preco, String linkImagem) {
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.preco = preco;
		this.linkImagem = linkImagem;
	}

	public Produtos(String titulo, String descricao, String preco, String linkImagem) {
		this.titulo = titulo;
		this.descricao = descricao;
		this.preco = preco;
		this.linkImagem = linkImagem;
	}
	
	public Produtos(){
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getPreco() {
		return preco;
	}

	public void setPreco(String preco) {
		this.preco = preco;
	}

	public String getlinkImagem() {
		return linkImagem;
	}

	public void setlinkImagem(String linkImagem) {
		this.linkImagem = linkImagem;
	}
	
	
}

