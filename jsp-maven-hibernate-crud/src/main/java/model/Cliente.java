package model;

public class Cliente {
	
	private int id;
	private String email;
	private String senha;
	private String nome;
	private String sobreNome;

	public Cliente(String email, String senha) {
		super();
		this.email = email;
		this.senha = senha;
	}

	public Cliente(int id, String email, String senha, String nome, String sobreNome) {
		super();
		this.id = id;
		this.email = email;
		this.senha = senha;
		this.nome = nome;
		this.sobreNome = sobreNome;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobreNome() {
		return sobreNome;
	}
	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}
	
}
