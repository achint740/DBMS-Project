package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Hospital extends Parent_Table {
	final public String [] Features = {
			"Hospital_ID",
			"Name",
			"City" ,
			"District",
			"State",
			"PinCode"
			
	};
    final public HashSet<String> Primary_Key ;
	public Hospital() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Hospital_ID");
		
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
