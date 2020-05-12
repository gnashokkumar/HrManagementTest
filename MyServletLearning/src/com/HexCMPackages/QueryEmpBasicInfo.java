package com.HexCMPackages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet(name = "QueryEmployeeBasicInfo", urlPatterns = { "/QueryEmployeeBasicInfo" })
public class QueryEmpBasicInfo extends HttpServlet {

	private static final String CONTENT_TYPE = "text/html; charset=windows-1252";

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("Entered Servlet...");
//		String empID="";
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_mgmt", "Ashok",
					"Itanium@123");
			Statement stmt = conn.createStatement();
			String FetchEmployeeBasicInfo = "select emp_id, emp_first_name, emp_mid_name, emp_last_name, legal_entity, emp_pay_status, emp_ben_status, emp_pay_start_date,emp_country from emp_basic_info;";
			ResultSet rset = stmt.executeQuery(FetchEmployeeBasicInfo);
			System.out.println("Fetch employee query executed...");

			JSONArray json = new JSONArray();

			System.out.println("json object created...");
//			ResultSetMetaData metadata =  rset.getMetaData();
			int Columns = 0, emp_id, i = 0;

			String emp_first_name, emp_mid_name, emp_last_name, emp_alpha_name, legal_entity, emp_pay_status,
					emp_ben_status, emp_country, emp_pay_start_date;
//			String colname = "emp_id";
			

			while (rset.next()) {
				JSONObject obj = new JSONObject();
				emp_id = rset.getInt("emp_id");
				emp_first_name = rset.getString("emp_first_name");
				emp_mid_name = rset.getString("emp_mid_name");
				emp_last_name = rset.getString("emp_last_name");
				legal_entity = rset.getString("legal_entity");
				emp_pay_status = rset.getString("emp_pay_status");
				emp_ben_status = rset.getString("emp_ben_status");
				emp_pay_start_date = rset.getString("emp_pay_start_date");
				emp_country = rset.getString("emp_country");

				obj.put("emp_id", rset.getObject("emp_id"));
				emp_alpha_name = emp_first_name + " " + emp_mid_name + " " + emp_last_name;
				obj.put("emp_alpha_name", emp_alpha_name);
				if (legal_entity != null) {
					obj.put("legal_entity", rset.getObject("legal_entity"));
				} else {
					obj.put("legal_entity", "");
				}

				if (emp_pay_status != null) {
					obj.put("emp_pay_status", rset.getObject("emp_pay_status"));
				} else {
					obj.put("emp_pay_status", "");
				}

				if (emp_ben_status != null) {
					obj.put("emp_ben_status", rset.getObject("emp_ben_status"));
				} else {
					obj.put("emp_ben_status", "");
				}

				if (emp_pay_start_date != null) {
					obj.put("emp_pay_start_date", rset.getObject("emp_pay_start_date"));
				} else {
					obj.put("emp_pay_start_date", "");
				}

				if (emp_country != null) {
					obj.put("emp_country", rset.getObject("emp_country"));
				} else {
					obj.put("emp_country", "");
				}

				json.put(obj);

				System.out.println("emp_id----------> " + emp_id);
				System.out.println("emp_alpha_name----------> " + emp_alpha_name);
				System.out.println("legal_entity----------> " + legal_entity);
				System.out.println("emp_pay_status----------> " + emp_pay_status);
				System.out.println("emp_ben_status----------> " + emp_ben_status);
				System.out.println("emp_pay_start_date----------> " + emp_pay_start_date);
				System.out.println("emp_country----------> " + emp_country);

			}

			res.setContentType("application/json;charset=UTF-8");
			String jsonString = json.toString();
			System.out.println("jsonString:" + jsonString);
			res.getWriter().write(jsonString);

			Map<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("Status", "Success");
			jsonMap.put("Rows", 100);

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}
