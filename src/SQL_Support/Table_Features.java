package SQL_Support;

import java.util.HashSet;

import Tables.Contact_Details;
import Tables.Foreign_Visit_Info;
import Tables.Person;
/*
 * SQL Commands uses this interface 
 * to check the validity of features
 * for given a Table
 */
public class Table_Features {
	public String[] Features(String Table_Name){
		if(Table_Name.equals("Person")) {
			Person p = new Person();
			return p.Features ;
		}else if(Table_Name.equals("Contact_Details")) {
			Contact_Details c = new Contact_Details();
			return c.Features ;
		}else if(Table_Name.equals("Foreign_Visit_Info")) {
			Foreign_Visit_Info fvi = new Foreign_Visit_Info();
			return fvi.Features ;
		}
		return null;
	}
	public HashSet<String> Primary_Key(String Table_Name){
		if(Table_Name.equals("Person")) {
			Person p = new Person();
			return p.Primary_Key ;
		}else if(Table_Name.equals("Contact_Details")) {
			Contact_Details c = new Contact_Details();
			return c.Primary_Key ;
		}else if(Table_Name.equals("Foreign_Visit_Info")) {
			Foreign_Visit_Info fvi = new Foreign_Visit_Info();
			return fvi.Primary_Key ;
		}
		return null;
	}
}
