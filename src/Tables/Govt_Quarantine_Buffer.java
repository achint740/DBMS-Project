package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Govt_Quarantine_Buffer extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number"
	};
    final public HashSet<String> Primary_Key ;
	public Govt_Quarantine_Buffer() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
		
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
