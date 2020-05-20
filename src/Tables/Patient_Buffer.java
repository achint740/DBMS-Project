package Tables;

import java.util.HashSet;

public class Patient_Buffer extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number",
			"Hospital_ID"
	};
    final public HashSet<String> Primary_Key ;
	public Patient_Buffer() {
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
