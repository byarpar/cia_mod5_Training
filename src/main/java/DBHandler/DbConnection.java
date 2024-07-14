package DBHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = null;

		String dburl = "jdbc:mysql://localhost:3306/cia_mod5";
		String username = "root";
		String password = "byarpar12";

		con = DriverManager.getConnection(dburl, username, password);
		System.out.println("Connection ok ...");
		return con;

	}

}