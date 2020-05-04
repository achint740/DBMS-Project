package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Team_Hospital extends Parent_Table {
	final public String [] Features = {
			"Team_ID",
			"Hospital_ID",
		
	};
    final public HashMap<String  , String > Foreign_Keys ;

    final public HashSet<String> Primary_Key ;
	public Team_Hospital() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Hospital_ID");
		Primary_Key.add("Team_ID" );
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Hospital" , "Hospital_ID");
		Foreign_Keys.put("Teams" , "Team_ID");
	}
	
	@Override
	public String[] get_features() {
		return Features.clone();
	}
	@Override
	public HashSet<String> get_primary_key() {
		return Primary_Key;
	}
}
