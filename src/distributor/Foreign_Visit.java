<<<<<<< HEAD:src/Views/Entity_Foreign_Visit.java
package Views;
=======
package distributor;
>>>>>>> c2ea8ddb4360819f7dc81e36924c7d6bd50dd325:src/distributor/Foreign_Visit.java

public class Entity_Foreign_Visit{
	private String[] Derieved_Tables = { 
			"Foreign_Visit_Info", 
			"Person", 
			"Contact_Details" };

	public String[] get_Tables() {
		return Derieved_Tables.clone();
	}
}
