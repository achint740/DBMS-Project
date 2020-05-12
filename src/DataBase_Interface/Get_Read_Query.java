package DataBase_Interface;

import org.json.JSONObject;

public class Get_Read_Query {
	public String[] values;
	public String[] features;

	public String get(JSONObject obj, String type) {
		String query = "";
		if (type.equals("Total_Active_Cases")) {
			query = " SELECT COUNT(Aadhar_Number) as Total_Active_Cases FROM PATIENT WHERE Date_Discharge IS  NULL ;";
			features = new String[1];
			features[0] = "Total_Active_Cases";
		} else if (type.equals("Total_Recovered_Cases")) {
			query = " SELECT COUNT(Aadhar_Number) as Total_Recovered_Cases FROM PATIENT WHERE Date_Discharge IS NOT NULL ; ";
			features = new String[1];
			features[0] = "Total_Recovered_Cases";
		} else if (type.equals("Total_Cases")) {
			query = " SELECT COUNT(Aadhar_Number) as Total_Cases FROM PATIENT ; ";
			features = new String[1];
			features[0] = "Total_Cases";
		}

		else if (type.equals("Details_Nearby_Hospital")) {

			query ="SELECT  Hospital.Name as Name, City, State,Count(Patient_ID)  as Patient, Count(Distinct Doctor_ID)  as Doctor from Hospital INNER JOIN (Select Doctor.Hospital_ID , Doctor.Doctor_ID , Patient.Patient_ID from Doctor INNER JOIN Patient on Doctor.Doctor_ID = Patient.Doctor_ID)as der On der.Hospital_ID = Hospital.Hospital_id  where Hospital.city = ? and Hospital.state = ? Group BY Hospital.Hospital_ID ";
			values = new String[2];
			values[0] = (String) obj.get("city") + "";
			values[1] = (String) obj.get("state") + "";
			features = new String[5];
		      features[0] = "Name";
		      features[1] = "City";
		      features[2]="State";
		      features[3] = "Patient";
		      features[4] = "Doctor";
		}

		else if (type.equals("Nearby_Active_Cases")) {
			query =" SELECT COUNT(Patient_ID)as Nearby_Active_Cases FROM PATIENT Inner Join  Person  On person.Aadhar_Number = Patient.Aadhar_Number where  city = ? and state = ? and Date_Discharge IS NULL  ; ";
			values = new String[2];
			values[0] = (String) obj.get("city") + "";
			values[1] = (String) obj.get("state") + "";
			
			features = new String[1];

			features[0] = "Nearby_Active_Cases";

		} else if (type.equals("Nearby_Recovered_Cases")) {
			query =" SELECT COUNT(Patient_ID)as Nearby_Recovered_Cases FROM PATIENT Inner Join  Person  On person.Aadhar_Number = Patient.Aadhar_Number where  city = ? and state = ? and Date_Discharge IS NOT NULL  ; ";
			values = new String[2];
			values[0] = (String) obj.get("city") + "";
			values[1] = (String) obj.get("state") + "";
			features = new String[1];
			features[0] = "Nearby_Recovered_Cases";
		} else if (type.equals("Nearby_Cases")) {
			query = " SELECT COUNT(Patient_ID)as Nearby_Cases FROM PATIENT Inner Join  Person  On person.Aadhar_Number = Patient.Aadhar_Number where  city = ? and state = ? ; " ; 
					
			values = new String[2];
			values[0] = (String) obj.get("city") + "";
			values[1] = (String) obj.get("state") + "";
			
			features = new String[1];
			features[0] = "Nearby_Cases";
			
		}
		
		//To know the total cases in a hospital
		else if(type.equals("Total_Hosp_Cases")) {
			query = " SELECT COUNT(Patient.Patient_ID) AS Total_Hosp_Cases FROM Patient INNER JOIN Doctor ON Patient.Doctor_ID=Doctor.Doctor_ID WHERE Doctor.Hospital_ID=?; ";
			
			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID") + "";
			
			features = new String[1];
			features[0] = "Total_Hosp_Cases";
			
		} else if(type.equals("Active_Hosp_Cases")) {
			query = " SELECT COUNT(Patient.Patient_ID) AS Active_Hosp_Cases FROM Patient INNER JOIN Doctor ON Patient.Doctor_ID=Doctor.Doctor_ID WHERE Doctor.Hospital_ID=? AND Patient.Date_Discharge IS NOT NULL; ";
			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID") + "";
			
			features = new String[1];
			features[0] = "Active_Hosp_Cases";
		} else if(type.equals("Treated_Hosp_Cases")) {
			query = " SELECT COUNT(Patient.Patient_ID) AS Treated_Hosp_Cases FROM Patient INNER JOIN Doctor ON Patient.Doctor_ID=Doctor.Doctor_ID WHERE Doctor.Hospital_ID=? AND Patient.Date_Discharge IS NULL; ";
			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID") + "";
			
			features = new String[1];
			features[0] = "Treated_Hosp_Cases";
		}
		
		else if(type.equals("Patient_Info")) {
			query = " SELECT * FROM PATIENT INNER JOIN PERSON ON PATIENT.AADHAR_NUMBER=PERSON.AADHAR_NUMBER WHERE PATIENT.PATIENT_ID=?; ";
			values = new String[1];
			values[0] = (String) obj.get("Patient_ID");
			
			features = new String[10];
			features[0] = "Aadhar_Number";
			//Isse complete karna hai abhi
		} 
		
		else if(type.equals("Patient_List")) {
			query = " Select T.Patient_ID,Person.Aadhar_Number,Person.First_Name,Person.Last_Name,Person.Age,Person.Gender,Person.Address_Line_1,Person.City,Person.State,Person.PinCode from person inner join (SELECT Patient.Aadhar_Number AS aadhar,Patient.Patient_ID FROM Patient INNER JOIN Doctor ON Patient.Doctor_ID=doctor.Doctor_ID WHERE Doctor.Hospital_ID=? ) AS T ON person.Aadhar_Number=T.aadhar; ";
			values = new String[1];
			values[0] = (String) obj.get("Patient_ID");
			
			features = new String[10];
			//Isse complete karna hai
		}
		else if(type.equals("Doctor_Info")) {
			query = "SELECT NAME,DOCTOR_ID,QUALIFICATION FROM DOCTOR WHERE HOSPITAL_ID=?;";
			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID");
			
			features = new String[3];
			features[0] = "NAME";
			features[1] = "DOCTOR_ID";
			features[2] = "QUALIFICATION";
		}
		else if(type.equals("State_Analysis")) {
			query = " SELECT PERSON.STATE AS STATE_SELECTED,COUNT(PATIENT.PATIENT_ID) AS CNT FROM PATIENT INNER JOIN PERSON ON PATIENT.AADHAR_NUMBER = PERSON.AADHAR_NUMBER GROUP BY STATE; ";
			values = new String[0];
			
			features = new String[2];
			features[0] = "STATE_SELECTED";
			features[1] = "CNT";
		}
		else if(type.equals("City_Analysis")) {
			query = " SELECT PERSON.CITY AS CITY_SELECTED,COUNT(PATIENT.PATIENT_ID) AS CNT FROM PATIENT INNER JOIN PERSON ON PATIENT.AADHAR_NUMBER=PERSON.AADHAR_NUMBER WHERE PERSON.STATE=? GROUP BY PERSON.CITY; ";
			values = new String[1];
			values[0] = (String) obj.get("state");
			features = new String[2];
			features[0] = "CITY_SELECTED";
			features[1] = "CNT";
		}
		else if(type.equals("Hosp_State")) {
			query = " SELECT Hospital_ID,Name,City,Pincode FROM hospital WHERE State=?; ";
			values = new String[1];
			values[0] = (String) obj.get("state");
			features = new String[4];
			features[0] = "Hospital_ID";
			features[1] = "Name";
			features[2] = "City";
			features[3] = "Pincode";
		}
		
		return query;
	}
}
