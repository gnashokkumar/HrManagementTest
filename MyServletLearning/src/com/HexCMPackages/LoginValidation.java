package com.HexCMPackages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginValidation extends HttpServlet {

	/**
	 * 
	 */

	private static final long serialversionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String userName = req.getParameter("userid").trim();
		String userPassword = req.getParameter("password").trim();

		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok",
				"Itanium@123"); Statement stmt = conn.createStatement();) {
			String LoginValidateQuery = "select * from hexcm_users where user_name='" + userName + "' and password='"
					+ userPassword + "';";

//			ResultSet ruleset = stmt.executeQuery(LoginValidateQuery.toString());
//			Test code for resultset
			ResultSet ruleset = stmt.executeQuery(LoginValidateQuery);
//			String loginvalidate = (String)LoginValidateQuery;
			System.out.println("Generated query = " + LoginValidateQuery.toString());
			System.out.println("Query Results: " + ruleset.toString());
			
//			System.out.println("Query Results: " + Result.toString());

			if (!ruleset.next()) { // empty ResultSet
				System.out.println("Wrong username/password!");
				req.setAttribute("LoginMessage", "Invalid Username / Password");
				req.getRequestDispatcher("Login.jsp").forward(req, res);

			} else {
				
				String emp_role = ruleset.getString("role");
				int emp_id = ruleset.getInt("emp_id");

				System.out.println("Userid = " + userName + "; Password = " + userPassword);
				System.out.println("Generated query = " + LoginValidateQuery.toString());
				
				System.out.println("Login request accepted.");
				String GetEmpName = "select emp_first_name from emp_basic_info where emp_id=" + emp_id + ";";
				System.out.println("Query to employee name : " + GetEmpName);
				ResultSet GetNameSet = stmt.executeQuery(GetEmpName);
				System.out.println("GetNameSet.getRow():before::"+GetNameSet.getRow());
				GetNameSet.next();
				System.out.println("GetNameSet.getRow():after::"+GetNameSet.getRow());
				String Emp_First_Name = GetNameSet.getString("emp_first_name");
//
				System.out.println("Employee First Name = " + Emp_First_Name);
				
				HttpSession session = req.getSession(false);
				String Session_Id = session.getId();
				if (session !=null) {
					session.invalidate();
				}
				session = req.getSession(true);
				System.out.println("Session created : "+ Session_Id);
				
				synchronized (session) {
					session.setAttribute("emp_first_name", Emp_First_Name);
					session.setAttribute("emp_role",emp_role);
					session.setAttribute("emp_id", emp_id);
					
					
					res.sendRedirect("/MyServletLearning/Index.jsp");
					
//					RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
//			        dispatcher.forward(req, res);
				}

			}

//		System.out.println("Uname after query :"+ruleset.getString("user_name"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Catch section entered");

		} finally {
		//	System.out.println("Session id is: "+ Session_Id);
		}

	}

}
