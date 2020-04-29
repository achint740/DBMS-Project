package Tables;

import java.util.HashSet;

public class Teams {
	final public String [] Features = {
			"Team_ID",
			"Team_Head",
			"District",
			"State"
	};
    final public HashSet<String> Primary_Key ;
	public Teams() {
		Primary_Key = new HashSet<String>();
		Primary_Key.add("Team_ID");
	}
}
