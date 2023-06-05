package com.librarymanagement.connection;

import java.sql.*;

public class DbConnection {

	public static Connection getDbConnection() {
		try {
			Class.forName(DbDetails.DBDRIVER);
			
			Connection con = DriverManager.getConnection(
					DbDetails.URL, DbDetails.USERNAME, DbDetails.PASSWORD);
			
			return con;
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Connection failed");
			e.printStackTrace();
			return null;
		}
	}
}
