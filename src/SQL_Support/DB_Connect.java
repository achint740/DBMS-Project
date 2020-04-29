package SQL_Support;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;

import org.json.JSONObject;

import DataBase_Interface.Execute_Statement;

public class DB_Connect {

// testing purpose
	public static void main(String[] args) {

	 //  SQL_Commands s = new SQL_Commands("root", "Jains1008@", "cms");
	   Execute_Statement e = new Execute_Statement();
		JSONObject obj = new JSONObject();

		//obj.put("Table_name","Foreign_Visit" );
		obj.put("Aadhar_Number","143456789995" );
		obj.put("Phone_Number", "1111111122");
		obj.put("First_Name" , "nancy");
		obj.put("Gender" , "Male");
		obj.put("Address_Line_1" , "sonepat");
		obj.put("City" , "rohtak");
		obj.put("State" , "haryana");
		obj.put("PinCode" , "110095");
		obj.put("Country", "Japan");
		obj.put("Current_Status", "neg");

//		s.Delete(obj);

//	   String[] features = {"Aadhar_Number" ,"Age" ,"PinCode"};
//	   List<JSONObject> list = s.Read(features, "Person");
//	   int i = 0;
//	   while(i < list.size()) {
//			JSONObject new_json_obj = list.get(i);
//			for (String f : features) {
//				System.out.print(f+" : " +new_json_obj.get(f)+" ");
//			}
//		System.out.println();
//		i++;
//	   }
		
		e.Insert(obj , "Foreign_Visit");
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
