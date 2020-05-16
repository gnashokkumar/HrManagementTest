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

public class SvtEmpCompensationInfo extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String AddEditMode = req.getParameter("AddEditFlag");
		
		HttpSession session = req.getSession(false);
		String sessionId = session.getId();
		System.out.println("Personal info servlet.Session id = "+ sessionId);
		int con_emp_id = (int) session.getAttribute("io_emp_id");
		
		String eePayFreq = req.getParameter("eepayfreq");
		String eePayClass = req.getParameter("eepayclass");
		String eePayGrade = req.getParameter("eepaygrade");
		String eePayStep = req.getParameter("eepaystep");
		int eeAnnualSalary = 0;
		if (req.getParameter("eesalaryannual")!=null || req.getParameter("eesalaryannual")!="") {
			eeAnnualSalary = Integer.parseInt(req.getParameter("eesalaryannual"));
			}
		
		float eePayPeriodSalary =  (float) 0.00;
		if (req.getParameter("eepayperiodsalary")!=null || req.getParameter("eepayperiodsalary")!="") {
			eePayPeriodSalary = Float.parseFloat(req.getParameter("eepayperiodsalary"));
			}
		
		float eeHourlyRate = (float) 0.00;
		if (req.getParameter("eehourlyrate")!=null || req.getParameter("eehourlyrate")!="") {
			eeHourlyRate = Float.parseFloat(req.getParameter("eehourlyrate"));
			}
		
		float eeCompaRatio = (float) 0.00;
		if (req.getParameter("eecomparatio")!=null || req.getParameter("eecomparatio")!="") {
			eeCompaRatio = Float.parseFloat(req.getParameter("eecomparatio"));
			}
		
		int eeStandardHours = 0;
		if (req.getParameter("eestandardhours")!=null || req.getParameter("eestandardhours")!="") {
			eeStandardHours = Integer.parseInt(req.getParameter("eestandardhours"));
			}
		
		float eeFte = (float) 0.00;
		if (req.getParameter("eefte")!=null || req.getParameter("eefte")!="") {
			eeFte = Float.parseFloat(req.getParameter("eefte"));
			}
		
		int eeStdHoursPerYear = 0;
		if (req.getParameter("eestdhoursperyear")!=null || req.getParameter("eestdhoursperyear")!="") {
			eeStdHoursPerYear = Integer.parseInt(req.getParameter("eestdhoursperyear"));
			}
		
		int eeStdDaysPerYear = 0;
		if (req.getParameter("eestddaysperyear")!=null || req.getParameter("eestddaysperyear")!="") {
			eeStdDaysPerYear = Integer.parseInt(req.getParameter("eestddaysperyear"));
			}
		
		String eeLastSalReviewDate = req.getParameter("eelastsalreviewdate");
		String eeNextSalReviewDate = req.getParameter("eenextsalreviewdate");
		
		res.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = res.getWriter();
	      
	   	      
			  try(  Connection conn =
			  DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok", "Itanium@123");			  
			  Statement stmt = conn.createStatement(); )
			  
			  {
								  
//				  
				  String sqlStr = "insert into emp_comp_info (emp_id,emp_pay_freq,"
					  		+ "emp_pay_class,emp_pay_grade, emp_pay_step, emp_salary, emp_pay_per_sal, "
					  		+ "emp_hrly_rate, emp_compa_ratio, emp_std_hrs_per_day, emp_fte, emp_std_hrs_per_year, "
					  		+ "emp_std_days_per_year, emp_last_sal_rev_date, emp_next_sal_rev_date) "
					  		+ "values ("+con_emp_id+",'"+eePayFreq+"','"+eePayClass+"','"+eePayGrade+"','"
					  		+eePayStep+"',"+eeAnnualSalary+","+eePayPeriodSalary+","+eeHourlyRate+","+eeCompaRatio+","
					  		+eeStandardHours+","+eeFte+","+eeStdHoursPerYear+","+eeStdDaysPerYear+",'"
					  		+eeLastSalReviewDate+"','"+eeNextSalReviewDate+"');";
				  
			  stmt.executeUpdate(sqlStr);
			  System.out.println("Emp Contacts info insert query = " +sqlStr);
			
			 
			  if(AddEditMode.equalsIgnoreCase("Add")) {
					
					System.out.println("Add mode entered in Emp Contacts servelet...");
					System.out.println("Employee contacts info. inserted in add mode...");
					res.sendRedirect("/MyServletLearning/EmpOrganizationInfo.jsp?AddEditMode=Add");
					
					
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
