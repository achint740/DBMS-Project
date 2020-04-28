package Tables;

import java.util.*;

public class Person {
	public String [] all_Person_Features = {
			"Aadhar_Number",
			"First_Name",
			"Last_Name",
			"Age",
			"Gender",
			"Address_Line_1",
			"City",
			"State",
			"PinCode"
	};
    public HashSet<String> Primary_Key ;
	public Person() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Aadhar_Number");
	}
}
