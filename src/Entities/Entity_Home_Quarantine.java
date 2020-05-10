package Entities;

public class Entity_Home_Quarantine {
	private String[] Derieved_Tables = { 
			"Home_Quarantined", 
			"Person", 
		    "Contact_Details" };

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
