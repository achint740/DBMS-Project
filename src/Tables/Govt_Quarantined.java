package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Govt_Quarantined extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number",
			"Start_Date",
			"Status" 
	};
    final public HashSet<String> Primary_Key ;
    final public HashMap<String  , String > Foreign_Keys ;
	public Govt_Quarantined() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Foreign__Visit" , "Person_Contacted");
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
