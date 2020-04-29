package Tables;

import java.util.HashSet;

public class Contact_Details {
	final public String [] Features = {
			"Aadhar_Number",
			"Phone_Number"
	};
    final public HashSet<String> Primary_Key ;
	public Contact_Details() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
	}
}
