package Tables;

import java.util.HashSet;

public class Users {
	final public String [] all_Person_Features = {
			"User_ID",
			"Password"
			
	};
    final public HashSet<String> Primary_Key ;
	public Users() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("User_ID");
	}
}
