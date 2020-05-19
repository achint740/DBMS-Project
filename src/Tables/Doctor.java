package Tables;

import java.util.HashMap;
import java.util.HashSet;

public class Doctor extends Parent_Table{
	final public String [] Features = {
			"Doctor_ID",
			"Name",
			"Hospital_ID",
			"Qualification"
	};
    final public HashSet<String> Primary_Key ;
    final public HashMap<String  , String > Foreign_Keys ;
	public Doctor() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Doctor_ID");
		
		Foreign_Keys = new HashMap<String, String>();
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
