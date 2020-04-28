package SQL_Support;

import java.util.HashSet;

import Tables.Person;

public class Table_Features {
	public String[] Features(String Table_Name){
		if(Table_Name.equals("Person")) {
			Person p = new Person();
			return p.all_Person_Features ;
		}
		return null;
	}
	public HashSet<String> Primary_Key(String Table_Name){
		if(Table_Name.equals("Person")) {
			Person p = new Person();
			return p.Primary_Key ;
		}
		return null;
	}
}
