package Tables;

import java.util.HashSet;

public class Users extends Parent_Table{
	final public String [] Features = {
			"User_ID",
			"Password"
			
	};
    final public HashSet<String> Primary_Key ;
	public Users() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("User_ID");
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
