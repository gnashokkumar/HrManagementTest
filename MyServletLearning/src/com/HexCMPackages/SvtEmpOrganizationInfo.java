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

public class SvtEmpOrganizationInfo extends HttpServlet {
	
public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String AddEditMode = req.getParameter("AddEditFlag");
		
		HttpSession session = req.getSession(false);
		String sessionId = session.getId();
		System.out.println("Personal info servlet.Session id = "+ sessionId);
		int con_emp_id = (int) session.getAttribute("io_emp_id");
		
		int eeSupervisorId = 0;
		if(req.getParameter("eesupervisor")!="null" || req.getParameter("eesupervisor")!="") {
			eeSupervisorId = Integer.parseInt(req.getParameter("eesupervisor"));
		}
		
		int eeMentorId = 0;
		if(req.getParameter("eementor")!="null" || req.getParameter("eementor")!="") {
			eeMentorId = Integer.parseInt(req.getParameter("eementor"));
		}
		
		String eeTeam = req.getParameter("eeteam");
		String eePosition = req.getParameter("eeposition");
		String eeJobType = req.getParameter("eejobtype");
		String eeJobStep = req.getParameter("eejobstep");
		String eeDateInCurrPos = req.getParameter("eedateincurrentposition");
		String eeDateInCurrJob = req.getParameter("ee_date_in_current_job");
		String eeJobTitle = req.getParameter("ee_job_title");
		String eeUnionCode = req.getParameter("ee_union_code");
		String eeJobLocation = req.getParameter("ee_job_location");
		String eeJobCategory = req.getParameter("ee_job_category");
		
		res.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = res.getWriter();
	      
	   	      
			  try(  Connection conn =
			  DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok", "Itanium@123");			  
			  Statement stmt = conn.createStatement(); )
			  
			  {
								  
//				  
				  String sqlStr = "insert into emp_org_info (emp_id,emp_supervisor_id,"
					  		+ "emp_mentor_id,emp_team_name, emp_position_id, emp_job_type, emp_job_step, "
					  		+ "emp_date_current_pos, emp_date_current_job, emp_job_title, emp_union_code, emp_job_location, "
					  		+ "emp_job_category) "
					  		+ "values ("+con_emp_id+","+eeSupervisorId+","+eeMentorId+",'"+eeTeam+"','"
					  		+eePosition+"','"+eeJobType+"','"+eeJobStep+"','"+eeDateInCurrPos+"','"+eeDateInCurrJob+"','"
					  		+eeJobTitle+"','"+eeUnionCode+"','"+eeJobLocation+"','"+eeJobCategory+"');";
				  
			  stmt.executeUpdate(sqlStr);
			  System.out.println("Emp Org. info insert query = " +sqlStr);
			
			 
			  if(AddEditMode.equalsIgnoreCase("Add")) {
					
					System.out.println("Add mode entered in Emp Org servelet...");
					System.out.println("Employee Org info. inserted in add mode...");
//					res.sendRedirect("/MyServletLearning/EmpOrganizationInfo.jsp?AddEditMode=Add");
					
					
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
