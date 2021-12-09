package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoProvedor implements Provedor {

	static Connection con = null;
	
	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(connUrl,username,pwd);
		}catch(Exception e){
			System.out.println(e);
		}
		
		return con;
	}
}
