package DataBase_Interface;

import org.json.JSONObject;

import SQL_Support.SQL_Commands;

public class Execute_Statement {
	private SQL_Commands sql;

	public Execute_Statement() {
		// TODO Auto-generated constructor stub
		sql = new SQL_Commands("root", "Jains1008@", "cms");
	}

	public void Insert(JSONObject obj, String view) {
		try {
			Entity entity = new Entity();
			JSONObject[] obj_array = entity.Split_Json_Objects(obj, view);
			if (!Possible(obj_array)) {
				throw new  Exception ("Insert could not be performed");
			}
			for (JSONObject object : obj_array) {
				object.remove("Status");
				sql.Insert(object);
			}
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("error in insert Execute_Statement");
		}
	}
	public void Delete(JSONObject obj, String view) {
		try {
			Entity entity = new Entity();
			JSONObject[] obj_array = entity.Split_Json_Objects(obj, view);
			
			if (!Possible(obj_array)) {
				throw new  Exception ("Insert could not be performed");
			}
			
			for (JSONObject object : obj_array) {
				object.remove("Status");
				sql.Delete(object);
			}
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("error in insert Execute_Statement");
		}
	}
	public void Update(JSONObject what ,  JSONObject where , String view) {
		try {
			Entity entity = new Entity();
			JSONObject[] what_array = entity.Split_Json_Objects(what, view);
			JSONObject[] where_array = entity.Split_Json_Objects(where, view);
		
			if (!Possible(where_array)) {
				throw new  Exception ("Update could not be performed");
			}
			for (int i = 0  ; i<where.length() ; i++) {
				where_array[i].remove("Status");
				what_array[i].remove("Status");
				sql.Update(what_array[i]  , what_array[i]);
			}
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("error in insert Execute_Statement");
		}
	}
	public void Read(JSONObject obj, String view) {
		try {
			Entity entity = new Entity();
			JSONObject[] obj_array = entity.Split_Json_Objects(obj, view);
			
			for (JSONObject object : obj_array) {

				sql.Insert(object);
			}
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("error in insert Execute_Statement");
		}
	}
	
	public boolean Possible(JSONObject[] obj) {
		for (JSONObject object : obj) {
			if (object.get("Status").equals("NOT OK")) {
				return false;
			}
		}
		return true;
	}
}
