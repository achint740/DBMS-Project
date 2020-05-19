package Entities;

public class Entity_Foreign_Visit{
	private String[] Derieved_Tables = { 
			"Foreign_Visit_Info", 
		};

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
