package SQL_Support;

import java.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONObject;

import Tables.Person;

public class SQL_Commands {
	Connection connection;

	public SQL_Commands(String Username, String Password, String Database_Name) {
		DB_Connect Database_Connector = new DB_Connect();
		connection = Database_Connector.get_Connection(Username, Password, Database_Name);

		table_features = new Table_Features();
	}

	public Table_Features table_features = null;

	public void Insert(JSONObject obj) {
		PreparedStatement ps = null;
		try {

			String Table_name = obj.getString("Table_Name");
			String[] features = table_features.Features(Table_name);
			HashSet<String> Primary_Key = table_features.Primary_Key(Table_name);

			String query = "INSERT INTO ";
			query = query + Table_name;
			String columns = " ( ";
			String values = "VALUES ( ";

			for (int i = 0; i < features.length; i++) {
				
				if (i > 0) {
					columns += " , ";
					values += " , ";
				}
				columns += features[i];
				values += "?";
			}

			columns += " ) ";
			values += " ) ;";
			query = query + columns + values;

			ps = connection.prepareStatement(query);
			for (int i = 1; i <= features.length; i++) {
				if (!obj.has(features[i - 1])) {
					if (Primary_Key.contains(features[i - 1]))
						throw new Exception("Primary Key can't be null");
					else {
						ps.setString(i, null);
						continue;
					}
				}
				ps.setString(i, obj.getString(features[i - 1]));
			}
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Error in SQL_Commands Insert operation");

		}
	}

	public void Delete(JSONObject obj) {
		PreparedStatement ps = null;
		try {

			String Table_name = obj.getString("Table_Name");
			HashSet<String> Primary_Key = table_features.Primary_Key(Table_name);

			String query = "DELETE FROM  ";
			query = query + Table_name;
			query = query + " where ";

			obj.remove("Table_Name");
			JSONArray keys = obj.names();
			List<String> Values_to_prepare_statement = new ArrayList<String>();
			for (int i = 0; i < keys.length(); ++i) {
				String key = keys.getString(i);
				String value = obj.getString(key);
				if (Primary_Key.contains(key)) {
					Primary_Key.remove(key);
				}
				if (i > 0) {
					query += " and ";
				}
				query += key + " = ? ";

				Values_to_prepare_statement.add(value);
			}
			
			query +=  " ; ";

			if (Primary_Key.size() != 0) {
				System.out.println("Delele Not Possible !");
				throw new Exception("not having primary key ");
			}
			System.out.println(query);
			ps = connection.prepareStatement(query);
			for (int i = 0; i < Values_to_prepare_statement.size(); i++) {
				ps.setString(i + 1, Values_to_prepare_statement.get(i));
			}
			int rs = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Error in SQL_Commands Delete operation");
		}
	}

	public List<JSONObject> Read(String querry , String[] values ,String[] features) {
		System.out.println("Query is : " + querry);
		PreparedStatement ps = null;
		List<JSONObject> list = null;
		ResultSet rs = null;
		try {
			ps = connection.prepareStatement(querry );
			if(values!=null) {
				for(int i = 1  ; i <= values.length ;i++ ) {
					ps.setString(i , values[i-1]);
			    }
			}
			System.out.println("Hello  " + ps);
			rs = ps.executeQuery();
			System.out.println(rs);
			list = new ArrayList<JSONObject>();
			while (rs.next()) {
				JSONObject new_json_obj = new JSONObject();
				for (String f : features) {
					new_json_obj.put(f, rs.getString(f));
				}
				list.add(new_json_obj);
			}
		} catch (Exception e) {
			System.out.println("Error in SQL_Commands Read operation " + e);
		}
		return list;
	}

	public void Update(JSONObject obj_what, JSONObject obj_where) throws SQLException {
		PreparedStatement ps = null;
//		try {

			String Table_name = obj_where.getString("Table_Name");
			HashSet<String> Primary_Key = table_features.Primary_Key(Table_name);

			String query = "UPDATE ";
			query = query + Table_name;
			query = query + " SET ";

			obj_where.remove("Table_Name");
			obj_what.remove("Table_Name");
			System.out.println(obj_what +" "+obj_where);
			System.out.println(Table_name + "   " + Primary_Key);
			JSONArray keys = obj_what.names();
			List<String> Values_to_prepare_statement = new ArrayList<String>();
			for (int i = 0; i < keys.length(); ++i) {
				String key = keys.getString(i);
				String value = obj_what.getString(key);

				if (i > 0) {
					query += " , ";
				}
				query += key + " = ? ";

				Values_to_prepare_statement.add(value);
			}

			query = query + " WHERE ";

			keys = obj_where.names();

			for (int i = 0; i < keys.length(); ++i) {
				String key = keys.getString(i);
				String value = obj_where.getString(key);
				if (Primary_Key.contains(key)) {
					Primary_Key.remove(key);
				}
				if (i > 0) {
					query += " and ";
				}
				query += key + " = ? ";

				Values_to_prepare_statement.add(value);
			}
			if (Primary_Key.size() != 0) {
				System.out.println("Update Not Possible !");
//				throw new Exception("Whole Data could be Updated");
			}

			ps = connection.prepareStatement(query);
			for (int i = 0; i < Values_to_prepare_statement.size(); i++)
				ps.setString(i + 1, Values_to_prepare_statement.get(i));
			ps.executeUpdate();
	
//		} catch (Exception e) {
//			System.out.println(e);
//			System.out.println("Error in SQL_Commands Update operation");
//		}
	}
	
	public JSONObject Verify(JSONObject obj) throws SQLException {
		   PreparedStatement ps = null;
		   ResultSet rs = null;
		   String querry = "Select category from users where user_id=? AND password=?;";
		   ps = connection.prepareStatement(querry);
		   ps.setString(1, (String) obj.get("user_id"));
		   ps.setString(2, (String) obj.get("password"));
		   System.out.println(ps);
		   rs = ps.executeQuery();
		   System.out.println("Result is : " + rs);
		   while(rs.next()) {
			   JSONObject ans = new JSONObject();

			   String c = rs.getString("category");
			   ans.put("flag", "true");
			   ans.put("category",c);
			   return ans;
		   }
		   return null;
	}

	
}
