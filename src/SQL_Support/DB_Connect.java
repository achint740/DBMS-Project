package SQL_Support;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;

import org.json.JSONObject;

import DataBase_Interface.Execute_Statement;
import Tables.Contact_Details;
import Tables.Parent_Table;

public class DB_Connect {

// testing purpose
	public static void main(String[] args) {

//	   SQL_Commands s = new SQL_Commands("root", "Dawra@740", "cms");
		Execute_Statement e  = new Execute_Statement();
		JSONObject what = new JSONObject();
		JSONObject where = new JSONObject();

		what.put("Doctor_ID", "abc01");
		what.put("Patient_ID", "P0002");
		where.put("Testing_Status", "positive");

	
		//System.out.println(what +" "+where);
		e.Update(where, what, "Entity_Patient");
		//ArrayList<JSONObject> list =  e.Read(obj ,"Entity_Hospital");
//	  for(JSONObject ob :list ) {
//		  System.out.println(ob);
//	  }
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
