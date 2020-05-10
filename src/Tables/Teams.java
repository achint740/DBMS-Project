package Tables;

import java.util.HashSet;

public class Teams extends Parent_Table{
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
	@Override
	public String[] get_features() {
		return Features.clone();
	}
	@Override
	public HashSet<String> get_primary_key() {
		return Primary_Key;
	}
}
