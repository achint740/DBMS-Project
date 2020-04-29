package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Team_Hosptial {
	final public String [] Features = {
			"Team_ID",
			"Hospital_ID",
		
	};
    final public HashMap<String  , String > Foreign_Keys ;

    final public HashSet<String> Primary_Key ;
	public Team_Hosptial() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Hospital_ID");
		Primary_Key.add("Team_ID" );
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Hospital" , "Hospital_ID");
		Foreign_Keys.put("Teams" , "Team_ID");
	}
}
