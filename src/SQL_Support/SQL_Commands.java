package SQL_Support;

import java.sql.Connection;

import org.json.JSONObject;

import Tables.Person;

public class SQL_Commands {
	Connection connection ;
	public SQL_Commands(String Username , String Password ,String Database_Name  ) {
		DB_Connect Database_Connector = new DB_Connect();
		connection = Database_Connector.get_Connection(Username, Password, Database_Name);
	}
	public  void Insert(JSONObject obj) {
		String Table_name = obj.getString("Table_name");
		if(Table_name.equals("Person")) {
			Person person = new Person();
			person.Insert(obj, connection);
		}
	}
	
}
