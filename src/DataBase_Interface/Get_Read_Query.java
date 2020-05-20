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
			
			features = new String[8];
			features[0] = "First_Name";
			features[1] = "Patient_ID";
			features[2] = "Date_Admit";
			features[3] = "Date_Discharge";
			features[4] = "Testing_Status";
			features[5] = "Last_Name";			
			features[6] = "Age";
			features[7] = "Doctor_ID";
			
			
		} 
		
		else if(type.equals("Patient_List")) {
			query =" SELECT person.First_Name,person.Last_Name  ,person.Age, T.Doctor_ID, T.Patient_ID, T.Date_Admit , T.Date_Discharge , T.Testing_Status"+
					 " from  Person inner join "+
					    " ( select P.Aadhar_Number, P.Patient_ID ,P.Doctor_ID , P.Date_Admit , P.Date_Discharge , P.Testing_Status from Doctor INNER JOIN Patient as P "+
					   "  on Doctor.Doctor_ID = P.Doctor_ID "+
					  "   where Doctor.Hospital_id  =  ?) as T "+
					 " on T.aadhar_number = person.aadhar_number "+
					"  ORDER BY T.DATE_DISCHARGE DESC ;";


			values = new String[1];
			System.out.println(obj);
			values[0] = (String) obj.get("Hospital_ID");
			
			features = new String[8];
			features[7] = "First_Name";
			features[5] = "Last_Name";			
			features[6] = "Age";
			features[0] = "Patient_ID";
			features[1] = "Date_Admit";
			features[2] = "Date_Discharge";
			features[3]= "Testing_Status";
			features[4] = "Doctor_ID";
		}
		else if(type.equals("Doctor_Info")) {
			query =" SELECT Doctor.NAME AS NAME,Doctor.DOCTOR_ID AS DOCTOR_ID ,Doctor.QUALIFICATION as QUALIFICATION, Count(Patient.patient_id) as TOTAL_PATIENTS, "+
				"	 Count(CASE  when  Patient.date_discharge is not  NULL THEN 1 END) as ACTIVE_PATIENTS,"+
				"	 Count(CASE  when  Patient.date_discharge is   NULL THEN 1 END) as RECOVERED_PATIENTS  "+
				"	    from Doctor INNER JOIN Patient  "+
				"	      on Doctor.Doctor_ID = Patient.Doctor_ID "+
				"	      where Doctor.Hospital_id  =  ? "+
				"	      group by Doctor.doctor_ID ;";

			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID");
			
			features = new String[6];
			features[0] = "NAME";
			features[1] = "DOCTOR_ID";
			features[2] = "QUALIFICATION";
			features[3] = "TOTAL_PATIENTS";
			features[4] = "ACTIVE_PATIENTS";
			features[5] = "RECOVERED_PATIENTS";
			
		}
		else if(type.equals("My_Patients")) {
			query =" SELECT person.First_Name,person.Last_Name  ,person.Age, T.Patient_ID, T.Date_Admit , T.Date_Discharge , T.Testing_Status"+
					 " from  Person inner join "+
					    " ( select P.Aadhar_Number, P.Patient_ID , P.Date_Admit , P.Date_Discharge , P.Testing_Status from Doctor INNER JOIN Patient as P "+
					   "  on Doctor.Doctor_ID = P.Doctor_ID "+
					  "   where Doctor.DOCTOR_id  =  ?) as T "+
					 " on T.aadhar_number = person.aadhar_number "+
					"  ORDER BY T.DATE_DISCHARGE DESC ;";

			values = new String[1];
			values[0] = (String) obj.get("Doctor_ID");
			
			features = new String[7];
			features[0] = "First_Name";
			features[1] = "Patient_ID";
			features[2] = "Date_Admit";
			features[3] = "Date_Discharge";
			features[4] = "Testing_Status";
			features[5] = "Last_Name";			
			features[6] = "Age";
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
		}else if(type.equals("Home_to_Govt_Guarantine")) {
			query = " Select * from person inner join Govt_Quarantine_Buffer on "
					+" person.aadhar_number = Govt_Quarantine_Buffer.aadhar_number "+
					"where city = (Select city from team where team_id= ?)"+
					"and state=  (Select state from team where team_id= ?);";
			
			values = new String[2];
			values[0] = (String) obj.get("Team_ID");
			values[1] = (String) obj.get("Team_ID");
			
			features = new String[9];
			features[0]="Aadhar_Number";
			features[1]="First_Name";
			features[2]="Last_Name";
			features[3]="Age";
			features[4]="Gender";
			features[5]="Address_Line_1";
			features[6]="City";
			features[7]="State";
			features[8]="PinCode";
		}else if(type.equals("Govt_Guarantine_to_Hosptital")) {
			query = " Select * from person inner join Patient_Buffer on "
					+" person.aadhar_number = Patient_Buffer.aadhar_number "+
					"where person.city = (Select city from teams where team_id= ?)"+
					" and person.state= (Select state from teams where team_id= ?) ; ";
			
			values = new String[2];
			values[0] = (String) obj.get("Team_ID");
			values[1] = (String) obj.get("Team_ID");
			
			features = new String[9];
			features[0]="Aadhar_Number";
			features[1]="First_Name";
			features[2]="Last_Name";
			features[3]="Age";
			features[4]="Gender";
			features[5]="Address_Line_1";
			features[6]="City";
			features[7]="State";
			features[8]="PinCode";
		}
        
		else if(type.equals("Foreign_List")) {
			query = " SELECT foreign_visit_info.aadhar_number,foreign_visit_info.date_visit,person.first_name,person.last_name,person.age,person.gender,person.address_line_1,person.city,person.state,person.pincode FROM foreign_visit_info INNER JOIN person ON foreign_visit_info.aadhar_number=person.aadhar_number WHERE foreign_visit_info.current_status='NOT ADMITTED' AND person.city=?;";
			values = new String[1];
			values[0] = (String) obj.get("city");
			features = new String[10];
		}
		else if (type.equals("Details_Team_Hospital")) {

			query ="SELECT  Hospital.Name as Name, City, State,Count(Patient_ID)  as Patient, Count(Distinct Doctor_ID)  as Doctor from Hospital INNER JOIN (Select Doctor.Hospital_ID , Doctor.Doctor_ID , Patient.Patient_ID from Doctor INNER JOIN Patient on Doctor.Doctor_ID = Patient.Doctor_ID)as der On der.Hospital_ID = Hospital.Hospital_id "+ 
			"  where Hospital.city = (Select city from teams where team_id= ?) "+
					" and Hospital.state =(Select state from team where team_id= ?) "+
			"Group BY Hospital.Hospital_ID ";
			values = new String[2];
			values[0] = (String) obj.get("Team_ID");
			values[1] = (String) obj.get("Team_ID");
			
			
			features = new String[5];
		      features[0] = "Name";
		      features[1] = "City";
		      features[2]=  "State";
		      features[3] = "Patient";
		      features[4] = "Doctor";
		}else if(type.equals("Govt_Guarantine_to_Patient")) {
			query = " Select * from person inner join Patient_Buffer on "
					+" person.aadhar_number = Patient_Buffer.aadhar_number "+
					"where Patient_Buffer.Hospital_ID = ? ";
			
			values = new String[1];
			values[0] = (String) obj.get("Hospital_ID");
					
			features = new String[9];
			features[0]="Aadhar_Number";
			features[1]="First_Name";
			features[2]="Last_Name";
			features[3]="Age";
			features[4]="Gender";
			features[5]="Address_Line_1";
			features[6]="City";
			features[7]="State";
			features[8]="PinCode";
		}
        

		return query;
	}
}
