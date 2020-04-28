package SQL_Support;

import java.sql.*;
import java.sql.DriverManager;

import org.json.JSONObject;

public class DB_Connect {
	
// testing purpose 	
	public static void main(String[] args) {
	   SQL_Commands s = new SQL_Commands("root", "Dawra@740", "cms");
	   JSONObject obj = new JSONObject();
		
		obj.put("Table_name","Person" );
		obj.put("Aadhar_Number","13456789775" );
		obj.put("First_Name" , "amit ");
		obj.put("Last_Name" , "singh");
		obj.put("Age" , "20");
		obj.put("Gender" , "Male");
		obj.put("Address_Line_1" , "sector -3 ");
		obj.put("City" , "rohini");
		obj.put("State" , "delhi");
		obj.put("PinCode" , "110085");
		
	   s.Insert(obj);
	}
	

	
	public static  Connection get_Connection(String Username , String Password , String Database_Name) {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").getConstructor().newInstance();
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+Database_Name,Username,Password);
		}catch (Exception e) {
			System.out.print("Unable to connect to DataBase "+Database_Name+" , with Username "+Username + " and Password "+ Password);
			System.out.println(e);
		}
		return connection;
	}
}
