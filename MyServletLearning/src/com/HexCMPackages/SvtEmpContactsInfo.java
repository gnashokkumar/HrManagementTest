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

public class SvtEmpContactsInfo extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String AddEditMode = req.getParameter("AddEditFlag");
		
		HttpSession session = req.getSession(false);
		String Session_Id = session.getId();
		System.out.println("Got Session id : "+ Session_Id);
		
		int con_emp_id = (int) session.getAttribute("io_emp_id");
		
//		if(req.getParameter("empnum") != null || req.getParameter("empnum") != "") {
//			con_emp_id= Integer.parseInt(req.getParameter("empnum"));
//		}
		
		int empCell01 = 0;
		
		if(req.getParameter("empCell01") != null || req.getParameter("empCell01") != "") {
			empCell01 = Integer.parseInt(req.getParameter("empCell01"));
		}		
		
		int empCell02 = 0;
		
		if(req.getParameter("empCell02") != null || req.getParameter("empCell02") != "") {
			empCell02 = Integer.parseInt(req.getParameter("empCell02"));
		}
		
		int homePhone01 = 0;
		if(req.getParameter("homePhone01") != null || req.getParameter("homePhone01") != "") {
			homePhone01 = Integer.parseInt(req.getParameter("homePhone01"));
		}
		
		int homePhone02 = 0;
		if(req.getParameter("homePhone02") != null || req.getParameter("homePhone02") != "") {
			homePhone02 = Integer.parseInt(req.getParameter("homePhone02"));
		}
		
		int deskPhone01 = 0;
		if(req.getParameter("deskPhone01") != null || req.getParameter("deskPhone01") != "") {
			deskPhone01 = Integer.parseInt(req.getParameter("deskPhone01"));
		}
		
		String emergencyContact01_name = req.getParameter("emergencyContact01_name");
		String emergencyContact01_relation = req.getParameter("emergencyContact01_relation");
		
		int emergencyContact01_number = 0;
		if(req.getParameter("emergencyContact01_number") != null || req.getParameter("emergencyContact01_number") != "") {
			emergencyContact01_number = Integer.parseInt(req.getParameter("emergencyContact01_number"));
		}
		
		String emergencyContact02_name = req.getParameter("emergencyContact02_name");
		String emergencyContact02_relation = req.getParameter("emergencyContact02_relation");
		
		int emergencyContact02_number = 0;
		if(req.getParameter("emergencyContact02_number") != null || req.getParameter("emergencyContact02_number") != "") {
			emergencyContact02_number = Integer.parseInt(req.getParameter("emergencyContact02_number"));
		}
		
		String officialEmailId = req.getParameter("officialEmailId");
		String personalEmail_primary = req.getParameter("personalEmail_primary");
		String personalEmail_secondary = req.getParameter("personalEmail_secondary");
		
				
		 // Set the response message's MIME type
	      res.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = res.getWriter();
	      
	   	      
			  try(  Connection conn =
			  DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok", "Itanium@123");			  
			  Statement stmt = conn.createStatement(); )
			  
			  {
								  
				  String sqlStr = "insert into emp_contact_info (emp_id,emp_cell_num_01,"
						  + "emp_cell_num_02, emp_home_phone_01, emp_home_phone_02, emp_desk_phone_01, emp_emergency_contact_01, "
						  + "emp_emergency_con_rel_01, emp_emergency_num_01, emp_emergency_contact_02, emp_emergency_con_rel_02, "
						  + " emp_emergency_num_02, emp_personal_email_pri, emp_personal_email_sec, emp_official_email) "
						  + "values ("+con_emp_id+","+empCell01+","+empCell02+","+homePhone01+","+homePhone02+","
						  +deskPhone01+",'"+emergencyContact01_name+"','"+emergencyContact01_relation+"',"+emergencyContact01_number+",'"
						  +emergencyContact02_name+"','"+emergencyContact02_relation+"',"+emergencyContact02_number+",'"
						  +officialEmailId+"','"+personalEmail_primary+"','"+personalEmail_secondary+"');";  
				  
			  stmt.executeUpdate(sqlStr);
			  System.out.println("Emp Contacts info insert query = " +sqlStr);
			
			 
			  if(AddEditMode.equalsIgnoreCase("Add")) {
					
					System.out.println("Add mode entered in Emp Contacts servelet...");
					System.out.println("Employee contacts info. inserted in add mode...");
					res.sendRedirect("/MyServletLearning/EmpPersonalInfo.jsp?AddEditMode=Add");
					
					
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
