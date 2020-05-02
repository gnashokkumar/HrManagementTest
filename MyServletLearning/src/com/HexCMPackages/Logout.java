package com.HexCMPackages;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost (HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		
		HttpSession session = req.getSession(true);
		String SessionId = session.getId();
		if (session !=null) {
			session.invalidate();
			System.out.println("Session id is: "+ SessionId);
			System.out.println("User session terminated and user logged out");
		}
		else { System.out.println("No active session"); }
		
		
		res.sendRedirect("/MyServletLearning/Login.jsp");
		
		
	}

}
