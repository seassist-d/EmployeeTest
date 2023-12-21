/**
 * 
 */
package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	private static final String URL = "jdbc:mysql://localhost:3306/todo";
	private static final String USER = "todoU";
	private static final String PASSWORD = "todoP";

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");

		return DriverManager.getConnection(URL, USER, PASSWORD);
	}
}
