package dao;

import java.sql.SQLException;
import java.util.List;
import model.Cliente;

public interface ClienteDAO {

	public int insereCliente(Cliente c);
	public Cliente getCliente(String email, String senha);
	public boolean editaCliente(Cliente c) throws SQLException;
	public Cliente selectCliente(int id);
	public List<Cliente> selectTodosCliente();
	public boolean deletaCliente(int id) throws SQLException;
}
