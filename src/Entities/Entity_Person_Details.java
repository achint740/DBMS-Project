package Entities;

public class Entity_Person_Details {
	private String[] Derieved_Tables = { 
			"Person", 
			"Contact_Details" };

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
