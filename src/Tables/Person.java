package Tables;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.json.JSONObject;

public class Person {
	public  void Insert(JSONObject obj , Connection connection) {
		PreparedStatement ps = null;
		try {
			String query = "INSERT INTO Person(Aadhar_Number ,First_Name  ,Last_Name ,Age ,Gender,Address_Line_1 ,City ,State ,PinCode ) VALUES(?,?,?,?,?,?,?,?,?)";
			ps=connection.prepareStatement(query);
			
			ps.setString(1,obj.getString("Aadhar_Number"));
			ps.setString(2, obj.getString("First_Name"));
			ps.setString(3, obj.getString("Last_Name"));
			ps.setString(4, obj.getString("Age"));
			ps.setString(5, obj.getString("Gender"));
			ps.setString(6, obj.getString("Address_Line_1"));
			ps.setString(7, obj.getString("City"));
			ps.setString(8, obj.getString("State"));
			ps.setString(9, obj.getString("PinCode"));
			

			int status = ps.executeUpdate();
			System.out.println(status);
		}catch (Exception e) {
			System.out.println(e);
			System.out.println("Data not inserted in Person Table ");
		}
	}
}
