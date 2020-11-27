package com.yoon.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static Connection connection = null;
	
	public static Connection getCon() {
		if(connection != null) {
			return connection;
		} else {
			try {
				Class.forName("com.mysql.Driver");
				connection = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/userdb","root", "23er");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return connection;
		} 
		
	}
}
