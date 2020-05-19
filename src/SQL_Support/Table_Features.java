package SQL_Support;

import java.util.HashSet;

import Tables.Contact_Details;
import Tables.Doctor;
import Tables.Foreign_Visit_Info;
import Tables.Govt_Quarantined;
import Tables.Home_Quarantined;
import Tables.Hospital;
import Tables.Parent_Table;
import Tables.Patient;
import Tables.Person;
import Tables.Team_Hospital;
import Tables.Teams;
import Tables.Users;

/*
 * SQL Commands uses this interface 
 * to check the validity of features
 * for given a Table
 */
public class Table_Features {
	public String[] Features(String Table_Name) {
		Parent_Table parent_table = null;
		if (Table_Name.equals("Person")) {
			parent_table = new Person();
		} else if (Table_Name.equals("Contact_Details")) {
			parent_table = new Contact_Details();
		} else if (Table_Name.equals("Foreign_Visit_Info")) {
			parent_table = new Foreign_Visit_Info();
		} else if (Table_Name.equals("Hospital")) {
			parent_table = new Hospital();
		}else if (Table_Name.equals("Patient")) {
			parent_table = new Patient();
		}else if (Table_Name.equals("Teams")) {
			parent_table = new Teams();
		}else if (Table_Name.equals("Users")) {
			parent_table = new Users();
		}else if (Table_Name.equals("Team_Hospital")) {
			parent_table = new Team_Hospital();
		}else if (Table_Name.equals("Home_Quarantined")) {
			parent_table = new Home_Quarantined();
		}else if (Table_Name.equals("Govt_Quarantined")) {
			parent_table = new Govt_Quarantined();
		}else if (Table_Name.equals("Doctor")) {
			parent_table = new Doctor();
		}
		return parent_table.get_features();
	}

	public HashSet<String> Primary_Key(String Table_Name) {
		Parent_Table parent_table = null;
		if (Table_Name.equals("Person")) {
			parent_table = new Person();
		} else if (Table_Name.equals("Contact_Details")) {
			parent_table = new Contact_Details();
		} else if (Table_Name.equals("Foreign_Visit_Info")) {
			parent_table = new Foreign_Visit_Info();
		} else if (Table_Name.equals("Hospital")) {
			parent_table = new Hospital();
		}else if (Table_Name.equals("Patient")) {
			parent_table = new Patient();
		}else if (Table_Name.equals("Teams")) {
			parent_table = new Teams();
		}else if (Table_Name.equals("Users")) {
			parent_table = new Users();
		}else if (Table_Name.equals("Team_Hospital")) {
			parent_table = new Team_Hospital();
		}else if (Table_Name.equals("Home_Quarantined")) {
			parent_table = new Home_Quarantined();
		}else if (Table_Name.equals("Govt_Quarantined")) {
			parent_table = new Govt_Quarantined();
		}else if (Table_Name.equals("Doctor")) {
			parent_table = new Doctor();
		}
		return parent_table.get_primary_key();
	}
}
