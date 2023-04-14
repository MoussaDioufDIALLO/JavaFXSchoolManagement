package application.view;


import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnection {

public static Connection databaseLink;

	
public static Connection getConnection() {
	String databaseName="java1";
	String databaseUser="root";
	String databasePassword="";
	String url="jdbc:mysql://localhost/"+databaseName;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		databaseLink = DriverManager.getConnection(url,databaseUser,databasePassword);
	}catch (Exception e) {
		e.printStackTrace(); 
	}
	return databaseLink;
}
}
