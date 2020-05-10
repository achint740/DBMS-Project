package Entities;

public class Entity_Patient {
	private String[] Derieved_Tables = { 
			"Patient", 
			"Person", 
		    "Contact_Details" };

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
