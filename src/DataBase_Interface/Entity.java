package DataBase_Interface;

import java.util.HashSet;

import org.json.JSONObject;

import SQL_Support.Table_Features;
import Views.Entity_Foreign_Visit;

public class Entity {

	private Table_Features table_features;
	private String[] Derieved_Tables;

	public Entity() {
		table_features = new Table_Features();
	}

	public JSONObject[] Split_Json_Objects(JSONObject obj, String View) {
		if (View.equals("Entity_Foreign_Visit")) {
			Entity_Foreign_Visit foreign_visit = new Entity_Foreign_Visit();
			Derieved_Tables = foreign_visit.get_Tables();
		}
		return get_JSON(obj);
	}

	private JSONObject get_JSON(JSONObject obj, String[] Features, HashSet<String> Primary_Key) {
		JSONObject new_obj = new JSONObject();

		for (String feature : Features) {
			if (obj.has(feature)) {
				if (Primary_Key.contains(feature)) {
					Primary_Key.remove(feature);
				}
				new_obj.put(feature, obj.get(feature));
			}
		}
		if (Primary_Key.size() == 0)
			new_obj.put("Status", "OK");
		else
			new_obj.put("Status", "NOT OK");
		return new_obj;
	}

	private JSONObject[] get_JSON(JSONObject obj) {
		JSONObject[] obj_arr = new JSONObject[Derieved_Tables.length];
		int index = 0;
		for (String table : Derieved_Tables) {
			String[] features = table_features.Features(table);
			HashSet<String> primary_key = new HashSet<String>(table_features.Primary_Key(table));
			obj_arr[index] = get_JSON(obj, features, primary_key);
			obj_arr[index].put("Table_Name", table);
			index++;
		}

		return obj_arr;
	}
}
