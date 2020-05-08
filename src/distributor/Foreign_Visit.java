package distributor;

public class Foreign_Visit {
	private String[] Derieved_Tables = { 
			"Foreign_Visit_Info", 
			"Person", 
			"Contact_Details" };

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
