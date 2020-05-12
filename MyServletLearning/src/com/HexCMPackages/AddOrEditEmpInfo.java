package com.HexCMPackages;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

public class AddOrEditEmpInfo extends HttpServlet{
	
public void doGet (HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String AddEditMode = req.getParameter("AddEditFlag"); // add = add mode; edit=edit mode.
		
		HttpSession session = req.getSession(false);
		String Session_Id = session.getId();
		
		if (session !=null) {
			String Emp_First_Name = (String) session.getAttribute("emp_first_name");
			String Emp_Role = (String) session.getAttribute("emp_role");
			int emp_id = (int) session.getAttribute("emp_id");
			
			System.out.println(emp_id+","+Emp_First_Name+","+Emp_Role);
			System.out.println("Session id = "+Session_Id);
		
		
			if (AddEditMode.equalsIgnoreCase("Add")) {
				System.out.println("Servlet called in Add mode...");
				
				JSONObject jsonObj = new JSONObject();
				String urlToRedirect = "/MyServletLearning/EmpBasicInfo.jsp?AddEditMode=Add";
				try {
					jsonObj.put("url",urlToRedirect);
				} catch (JSONException e) {
					e.printStackTrace();
				}
				res.getWriter().write(jsonObj.toString());
				
				//res.sendRedirect("/MyServletLearning/EmpBasicInfo.jsp");
			
			}else if (AddEditMode.equalsIgnoreCase("Edit")) {
				System.out.println("Servlet called in edit mode...");
				String EEFormToCall = req.getParameter("EEFormToCall");
			
			} else {
				System.out.println("Servlet called for an unknown mode...");
			}
		
		}
		else {
			System.out.println("No Valid Session present...");
		}
		
	}

}


