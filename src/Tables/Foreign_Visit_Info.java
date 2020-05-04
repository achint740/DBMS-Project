package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Foreign_Visit_Info extends Parent_Table {
	final public String [] Features = {
			"Aadhar_Number",
			"Country",
			"Date_Visit",
			"Current_Status",
			
	};
    final public HashSet<String> Primary_Key ;
    final public HashMap<String  , String > Foreign_Keys ;
	public Foreign_Visit_Info() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Person" , "Aadhar_Number");
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
