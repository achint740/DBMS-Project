package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Hospital {
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
}
