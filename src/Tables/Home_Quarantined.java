package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Home_Quarantined {
	final public String [] Features = {
			"Aadhar_Number",
			"Start_Date",
			"Person_Contacted" ,
	};
    final public HashSet<String> Primary_Key ;
    final public HashMap<String  , String > Foreign_Keys ;
	public Home_Quarantined() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Foreign__Visit" , "Person_Contacted");
	}
}
