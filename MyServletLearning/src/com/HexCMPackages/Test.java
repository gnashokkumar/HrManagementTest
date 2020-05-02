package com.HexCMPackages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {
public static void main(String[] args) {
	try{  
		//Class.forName("com.mysql.cj.jdbc.Driver");
		//Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/bookstore","Ashok","Itanium@123");  
		
		//here sonoo is database name, root is username and password  
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from books");  
		while(rs.next())  
		System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
		con.close();  
		
		//datatypeConversion();
		
		}catch(Exception e){ System.out.println(e);}  
	
	getUserInfo();
		}  

	

private static void datatypeConversion() {
	String one = "1234";
	String two = "two";
	
	int three = 3;
	double test = 3.4;
	
	//int oneInt = (int)one;
	int twoInt = Integer.parseInt(one);
	//String threeString = (String)three;
	
	double threeDouble = (double)three;
	
	
	
	System.out.println("twoInt---->"+twoInt);
}

private static void getUserInfo() {
	
		try {
			Connection con = DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/employee_mgmt","Ashok","Itanium@123");
			
			Statement stmt=con.createStatement();  
			
			String query = "select * from hexcm_users where user_name='gnashokkumar' and password='password';";
			
			ResultSet rs=stmt.executeQuery(query); 
			
			while(rs.next())  
				System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
			
			con.close();  
		} catch (SQLException e) {
			e.printStackTrace();
		}  
		
			
}
}
