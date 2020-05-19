package Tables;

import java.util.*;

public class Person extends Parent_Table{
	final public String [] Features = {
			"Aadhar_Number",
			"First_Name",
			"Last_Name",
			"Age",
			"Gender",
			"Address_Line_1",
			"City",
			"State",
			"PinCode",
			
	};
    final public HashSet<String> Primary_Key ;
	public Person() {
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
