package Tables;

import java.util.HashSet;

public class Contact_Details extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number",
			"Phone_Number"
	};
    final public HashSet<String> Primary_Key ;
	public Contact_Details() {
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
