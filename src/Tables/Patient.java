
package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Patient  extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number",
			"Patient_ID",
			"Hospital_ID",
			"Date_Admit",
			"Date_Discharge",
			"Testing_Status",
			"Doctor_ID"
	};
    final public HashSet<String> Primary_Key ;
    final public HashMap<String  , String > Foreign_Keys ;
	public Patient() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Patient_ID");
		
		Foreign_Keys = new HashMap<String, String>();
		Foreign_Keys.put("Person" , "Aadhar_Number");
		Foreign_Keys.put("Hospital" , "Hospital_ID");
		Foreign_Keys.put("Doctor" , "Doctor_ID");
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
