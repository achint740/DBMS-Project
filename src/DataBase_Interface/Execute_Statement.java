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
			if (Possible(obj_array)) {

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

	public boolean Possible(JSONObject[] obj) {
		for (JSONObject object : obj) {
			if (object.get("Status").equals("NOT OK")) {
				return false;
			}
		}
		return true;
	}
}
