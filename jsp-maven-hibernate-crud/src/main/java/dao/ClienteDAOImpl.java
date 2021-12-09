package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cliente;

public class ClienteDAOImpl implements ClienteDAO {
	
	static Connection con;
	static PreparedStatement ps;
	
	private static final String SELECT_USER_BY_ID = "SELECT id,email,senha,nome,sobreNome FROM cliente WHERE id =?";
	private static final String SELECT_ALL_USERS = "SELECT * FROM cliente";
	private static final String UPDATE_USERS_SQL = "UPDATE cliente SET email = ?, senha = ?, nome = ?, sobreNome = ? WHERE id = ?;";
	private static final String DELETE_USERS_SQL = "DELETE FROM cliente WHERE id = ?;";
	
	@Override
	public int insereCliente(Cliente c) {
		int status = 0;
		
		try {
			con = ConexaoProvedor.getCon();
			
			ps = con.prepareStatement("INSERT INTO cliente"+
			"(email, senha, nome, sobreNome) VALUES"+
			"(?, ?, ?, ?)");
			
			ps.setString(1, c.getEmail());
			ps.setString(2, c.getSenha());
			ps.setString(3, c.getNome());
			ps.setString(4, c.getSobreNome());
			
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Cliente getCliente(String email, String senha) {
		
		Cliente c = new Cliente(email, senha);
		try {
			con = ConexaoProvedor.getCon();
			
			ps = con.prepareStatement("SELECT * FROM cliente WHERE email = ? AND senha = ?");
			
			ps.setString(1, email);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				c.setEmail(rs.getString(2));
				c.setSenha(rs.getString(3));
				c.setNome(rs.getString(4));
				c.setSobreNome(rs.getString(5));
			}
			
			con.close();
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return c;
	}

	@Override
	public boolean editaCliente(Cliente c) throws SQLException {
		
		boolean linhaEditada;
		try{
			con = ConexaoProvedor.getCon();
			ps = con.prepareStatement(UPDATE_USERS_SQL);
			
			ps.setString(1, c.getEmail());
			ps.setString(2, c.getSenha());
			ps.setString(3, c.getNome());
			ps.setString(4, c.getSobreNome());
			ps.setInt(5, c.getId());
			
			linhaEditada = ps.executeUpdate() > 0;
			con.close();
			
		}finally {
			
		}
		return linhaEditada;
	}

	@Override
	public Cliente selectCliente(int id) {
		
		Cliente cliente = null;
		try {
			con = ConexaoProvedor.getCon();
			ps = con.prepareStatement(SELECT_USER_BY_ID);
			
			ps.setInt(1, id);
			System.out.println(ps);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nome = rs.getString("nome");
				String sobreNome = rs.getString("sobreNome");
				cliente = new Cliente(id, email, senha, nome, sobreNome);
			}
			
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}

	@Override
	public List<Cliente> selectTodosCliente() {
		
		List<Cliente> clientes = new ArrayList<>();
		try {
			con = ConexaoProvedor.getCon();
			ps = con.prepareStatement(SELECT_ALL_USERS);
			
			System.out.println(ps);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String nome = rs.getString("nome");
				String sobreNome = rs.getString("sobreNome");
				
				clientes.add(new Cliente(id, email, senha, nome, sobreNome));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return clientes;
	}

	@Override
	public boolean deletaCliente(int id) throws SQLException {
		
		boolean linhaDeletada;
		try {
			con = ConexaoProvedor.getCon();
			ps = con.prepareStatement(DELETE_USERS_SQL);
			
			ps.setInt(1, id);
			
			linhaDeletada = ps.executeUpdate() > 0;
			con.close();
		}finally {
			
		}
		return linhaDeletada;
	}

}
