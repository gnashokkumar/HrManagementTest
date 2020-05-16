package com.HexCMPackages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SvtEmpPersonalInfo extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String AddEditMode = req.getParameter("AddEditFlag");
		
		HttpSession session = req.getSession(false);
		String sessionId = session.getId();
		System.out.println("Personal info servlet.Session id = "+ sessionId);
		int con_emp_id = (int) session.getAttribute("io_emp_id");
		
		String preferredName = req.getParameter("prefname");
		String birthName = req.getParameter("birthname");
		String additionalName = req.getParameter("addtlname");
		String dateOfBirth = req.getParameter("dateofbirth");
		String gender = req.getParameter("gender");
		String maritalStatus = req.getParameter("maritalstatus");
		String countryOfBirth = req.getParameter("countryofbirth");
		String motherTongue = req.getParameter("mothertongue");
		String spouseName = req.getParameter("spousename");
		String spouseDob = req.getParameter("spousedateofbirth");
		String spouseDependent = req.getParameter("SpouseYesNo");
//		String spouseDependent_No = req.getParameter("spousedependentno");
		String fatherName = req.getParameter("fathername");
		String fatherDob = req.getParameter("fatherdateofbirth");
		String fatherDependent = req.getParameter("FatherYesNo");
//		String fatherDependent_No = req.getParameter("fatherdependentno");
		String motherName = req.getParameter("mothername");
		String motherDob = req.getParameter("motherdateofbirth");
		String motherDependent = req.getParameter("MotherYesNo");
//		String motherDependent_No = req.getParameter("motherdependentno");
		
		
		// Testing radio button input values
		System.out.println("Spouse Dependent  flag = "+spouseDependent);
		System.out.println("Father Dependent  flag = "+fatherDependent);
		System.out.println("Mother Dependent  flag = "+motherDependent);
		System.out.println("Date of birth  = "+dateOfBirth);
		
		
		 // Set the response message's MIME type
	      res.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = res.getWriter();
	      
	   	      
			  try(  Connection conn =
			  DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok", "Itanium@123");			  
			  Statement stmt = conn.createStatement(); )
			  
			  {
								  
//				  
				  String sqlStr = "insert into emp_personal_info (emp_id,emp_pref_name,"
					  		+ "emp_birth_name,emp_addtl_name, emp_dob, emp_gender, emp_mart_status, "
					  		+ "emp_birth_country, emp_mother_tongue, emp_spouse_name, emp_spouse_dob, emp_spouse_dep, "
					  		+ "emp_father_name, emp_father_dob, emp_father_dep, emp_mother_name, "
					  		+ "emp_mother_dob, emp_mother_dep) "
					  		+ "values ("+con_emp_id+",'"+preferredName+"','"+birthName+"','"+additionalName+"','"
					  		+dateOfBirth+"','"+gender+"','"+maritalStatus+"','"+countryOfBirth+"','"+motherTongue+"','"
					  		+spouseName+"','"+spouseDob+"','"+spouseDependent+"','"+fatherName+"','"
					  		+fatherDob+"','"+fatherDependent+"','"+motherName+"','"+motherDob+"','"+motherDependent+"');";
				  
			  stmt.executeUpdate(sqlStr);
			  System.out.println("Emp Contacts info insert query = " +sqlStr);
			
			 
			  if(AddEditMode.equalsIgnoreCase("Add")) {
					
					System.out.println("Add mode entered in Emp Contacts servelet...");
					System.out.println("Employee contacts info. inserted in add mode...");
					res.sendRedirect("/MyServletLearning/EmpCompensationInfo.jsp?AddEditMode=Add");
					
					
				} else if (AddEditMode.equalsIgnoreCase("Edit")) {
					
					System.out.println("Edit mode entered in servelet...");
					System.out.println("Employee contacts info. inserted in Edit mode...");
	          
	          
				} //closing if condition for add / edit mode
	          
	          

	          
	       } catch (SQLException e) {
	    	   e.printStackTrace();
			out.println("<html>");
			out.println("<body>");
			out.println("There is an error in the program-sqlException");
			out.println("</body>");
	        out.println("</html>");
		}
			  
			  finally {
	          out.close();  // Always close the output writer
	       }
		
		
		
		
	}

}
