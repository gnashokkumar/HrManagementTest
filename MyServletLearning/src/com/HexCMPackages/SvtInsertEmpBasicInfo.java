package com.HexCMPackages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;

public class SvtInsertEmpBasicInfo extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		String EmpFirstName = req.getParameter("firstname");
		String EmpMiddleName = req.getParameter("middlename");
		String EmpLastName = req.getParameter("lastname");
		int EmpId = 0;
		
		if(req.getParameter("empnum") != null || req.getParameter("empnum") != "") {
			EmpId= Integer.parseInt(req.getParameter("empnum"));
		}
		
		String EmpLegalEntity = req.getParameter("legalentity");
		String EmpDivision = req.getParameter("division");
		String EmpHomeBU = req.getParameter("businessunit");
		String EmpDepartment = req.getParameter("department");
		String EmpCountry = req.getParameter("country");
		String EmpPayStatus = req.getParameter("paystatus");
		String EmpEmpStatus = req.getParameter("employmentstatus");
		String EmpBenStatus = req.getParameter("benefitstatus");
		String EmpOrgHireDate = req.getParameter("originalhiredate");
		String EmpStartDate = req.getParameter("startdate");
		String EmpPayStartDate = req.getParameter("paystartdate");
		String EmpDateResigned = req.getParameter("dateresigned");
		String EmpStopDate = req.getParameter("paystopdate");
		String EmpTermDate = req.getParameter("dateterminated");
		
		
	      // Set the response message's MIME type
	      res.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = res.getWriter();
	      
	   // Class.forName("com.mysql.jdbc.Driver");
	      
			  try(  Connection conn =
			  DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok", "Itanium@123");			  
			  Statement stmt = conn.createStatement(); )
			  
			  {
				//Commenting the following query as there is a bigger statement.  
//				  String sqlStr =
//			  "insert into emp_basic_info (emp_id,emp_first_name,emp_mid_name,emp_last_name) values ("
//			  +EmpId+",'"+EmpFirstName+"','"+EmpMiddleName+"','"+EmpLastName+"');";
				  
				  String sqlStr = "insert into emp_basic_info (emp_id,emp_first_name,"
				  		+ "emp_mid_name,emp_last_name, legal_entity, division, business_unit, "
				  		+ "department, emp_country, emp_pay_status, emp_empl_status, emp_ben_status, "
				  		+ "emp_orig_hire_date, emp_start_date, emp_pay_start_date, emp_date_resigned, "
				  		+ "emp_pay_stop_date, emp_term_date) "
				  		+ "values ("+EmpId+",'"+EmpFirstName+"','"+EmpMiddleName+"','"+EmpLastName+"','"
				  		+EmpLegalEntity+"','"+EmpDivision+"','"+EmpHomeBU+"','"+EmpDepartment+"','"+EmpCountry+"','"
				  		+EmpPayStatus+"','"+EmpEmpStatus+"','"+EmpBenStatus+"','"+EmpOrgHireDate+"','"
				  		+EmpStartDate+"','"+EmpPayStartDate+"','"+EmpDateResigned+"','"+EmpStopDate+"','"+EmpTermDate+"');";	  
				  
			  stmt.executeUpdate(sqlStr);
			 
	      	  //dataInsert(EmpId, EmpFirstName, EmpMiddleName, EmpLastName);
	          
	      	  out.println("<!DOCTYPE html>");
	          out.println("<html><head>");
	          out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
	          out.println("<title>Employee Basic Info Response</title></head>");
	          out.println("<body>");
	          out.println("<h1>Employee Basic Information inserted successfully</h1>");  // says Hello
	          out.println("<p>Employee Number is : "+ EmpId + "</br>");
	          out.println("Employee's First Name is : "+ EmpFirstName + "</br>");
	          out.println("Employee's Middle Name is : "+ EmpMiddleName + "</br>");
	          out.println("Employee's Last Name is : "+ EmpLastName + "</br>");
	          out.println("Legal Entity is : "+ EmpLegalEntity + "</br>");
	          out.println("Division is : "+ EmpDivision + "</br>");
	          out.println("Home BU is : "+ EmpHomeBU + "</br>");
	          out.println("Department is : "+ EmpDepartment + "</br>");
	          out.println("Residing Country is : "+ EmpCountry + "</br>");
	          out.println("Pay Status is : "+ EmpPayStatus + "</br>");
	          out.println("Employees employment status is : "+ EmpEmpStatus + "</br>");
	          out.println("Benefit Status is : "+ EmpBenStatus + "</br>");
	          out.println("Original Hire Date is : "+ EmpOrgHireDate + "</br>");
	          out.println("Start Date is : "+ EmpStartDate + "</br>");
	          out.println("Pay Start Date is : "+ EmpPayStartDate + "</br>");
	          out.println("Resigned Date is : "+ EmpDateResigned + "</br>");
	          out.println("Pay Stop Date is : "+ EmpStopDate + "</br>");
	          out.println("Termination Date is : "+ EmpTermDate + "</br></p>");
	          out.println("<p> <b>Query used :</b> </p>");
	          out.println("<p>"+sqlStr+"</p>");
	          out.println("</body>");
	          out.println("</html>");
	          
	          
	    	  
//	    	  out.println("<script type=\"text/javascript\">");  
//	    	  out.println("alert('Record inserted successfully...');");  
//	    	  out.println("</script>");
	          
	       } catch (SQLException e) {
	    	   e.printStackTrace();
			out.println("<html>");
			out.println("<body>");
			out.println("There is an error in the program-sqlException");
			out.println("</body>");
	        out.println("</html>");
		}
//			  catch(ClassNotFoundException cnfe) {
//			cnfe.printStackTrace();
//				out.println("<html>");
//				out.println("<body>");
//				out.println("There is an error in the program - Classnotfound");
//				out.println("</body>");
//		        out.println("</html>");
//		}
			  
			  finally {
	          out.close();  // Always close the output writer
	       }
	      
//		System.out.println("Employee Number is"+ EmpId);
//		System.out.println("Employee First Name is"+ EmpFirstName);
//		System.out.println("Employee Middle Name is"+ EmpMiddleName);
//		System.out.println("Employee Last Name is"+ EmpLastName);
		
	}
	
//	private ResultSet dataInsert(int EmpId, String EmpFirstName, String EmpMiddleName, String EmpLastName) throws SQLException, ClassNotFoundException{
//
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection conn = DriverManager.getConnection(
//					"jdbc:mysql://localhost:3306/employee_mgmt?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
//					"Ashok", "Itanium@123");
//
//			Statement stmt = conn.createStatement();
//
//			String sqlStr = "insert into emp_basic_info (emp_id,emp_first_name,emp_mid_name,emp_last_name) values ("
//					+ EmpId + ",'" + EmpFirstName + "','" + EmpMiddleName + "','" + EmpLastName + "');";
//			
//			//stmt.execute(sqlStr);
//			
//			ResultSet result = stmt.executeQuery(sqlStr);
//			return result;
//	}

}
