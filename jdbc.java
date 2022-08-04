package submission;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

//import com.mysql.cj.xdevapi.Statement;

public class jdbc {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String username = "root";
			String password = "root";
			String url = "jdbc:mysql://localhost:3306/DATA";
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();


						String query = "select * from employees";
						
//						String insertQuery="INSERT INTO employees(emp_id,emp_name,job_name,manager_id,hire_date,salary,commission,dep_id) VALUES(2599,'Ravi','IT-Help',20245,'2009-05-05',25667,1000,3)";

						ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				
				System.out.println("id : "+" "+rs.getInt("emp_id") +" emp_name : "+rs.getString("emp_name") +" job_name :  "+rs.getString(3) +" salary : "+rs.getInt(4));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
