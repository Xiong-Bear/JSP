package zzu;

import java.sql.*;

public class DBConnection {
	public  Connection getConnection() {
		
	
	String url="jdbc:mysql://127.0.0.1:3306/library_coursedesign?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT&useSSL=false";
	String user="root";
	String pass="123456";
	Connection connection=null;
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		System.out.println("failed to find class");
	}
	try {
		connection=DriverManager.getConnection(url, user, pass);
	} catch (SQLException e) {
		System.out.println("failed to load driver");
	}
	if (connection!=null) {
		return connection;
	} else {
		System.out.println("failed to get connection");
	}
	return connection;
	}
}
