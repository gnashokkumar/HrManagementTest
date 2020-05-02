<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="HexCMIndex.css">
<link rel="stylesheet" href="HexCMLandingPage.css">
<meta charset="ISO-8859-1">
<title>HexCM</title>
</head>
<body>
	<div class="container">

		<div class="card">

			<span class="avatar"> <img src="Images/${emp_id}.jpg"
				alt="Vedi">
			</span>
			<h2>${emp_first_name}</h2>
			<p class="title">${emp_role}</p>



			<!-- <div style="margin: 0 0;">
        <a href="#"><i class="fa fa-dribbble"></i></a> 
        <a href="#"><i class="fa fa-twitter"></i></a>  
        <a href="#"><i class="fa fa-linkedin"></i></a>  
        <a href="#"><i class="fa fa-facebook"></i></a> 
      </div> -->
		<form method="post" action="Logout">	
			<p>
				<button class="button2" >Logout</button>
			</p> 
		</form>
		
		</div>

		<div class="PageHeader">
			<div class="columnHeader">
				<button class="buttonHeader">Employee Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader">Recruitment and Separation</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader">Benefits Administration</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader">Compensation Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader">Performance Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader">Workflows and Approvals</button>
			</div>
		</div>

		<div class="MainPane" id="EEMasterLandingPage">
			<p>
				<font face="Candara">Landing Page</font>
				
<div>
<table>
  <tr>
    <th> Select </th>
    <th>Employee Number</th>
    <th>Alpha Name</th>
    <th>Legal Entity</th>
	<th>Pay Status</th>
	<th>Benefit Status</th>
	<th>Pay Start Date</th>
	<th>Country</th>
  </tr>
  <tr>
    <td><input type="radio" name="EmployeeGrid"> </input></td>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
  </tr>
  <tr>
    <td><input type="radio" name="EmployeeGrid"> </input></td>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
  </tr>
  <tr>
    <td><input type="radio" name="EmployeeGrid"> </input></td>
    <td>Adam</td>
    <td>Johnson</td>
    <td>67</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
  </tr>
</table>
</div>
			</p>
		</div>



		<div class="NavigationLeft">
			<p>
				<font face="Candara"><b>Employee Master</b></font>
			</p>
			<button class="button button1" onclick="showEEBasicInfo();">EE
				Basic Info.</button>
			<button class="button button1" onclick="showEEContactsInfo();">EE
				Contact Info.</button>
			<button class="button button1" onclick="showEEPersonalInfo();">EE
				Personal Info.</button>
			<button class="button button1" onclick="showEECompInfo();">EE
				Compensation Info.</button>
			<button class="button button1" onclick="showEEOrgInfo();">EE
				Organizational Info.</button>
			<button class="button button1" onclick="showEENatFiscInfo();">EE
				Natl. Fiscal Info.</button>
			<button class="button button1" onclick="showEETaxInfo();">EE
				Taxation Info.</button>
			<button class="button button1" onclick="showEESuppInfo();">EE
				Supplemental Info.</button>
			<button class="button button1" onclick="showEECatCodesInfo();">EE
				Category Codes</button>
			<button class="button button1" onclick="showEEFlexDatesInfo();">EE
				Flex. Dates</button>


		</div>
		<!-- Navigation Pane ends here -->

		<div class="ReportsPaneLeft">
			<p>
				<font face="Candara"><b>Reports</b></font>
			</p>
			<button class="button button1">EEs Turnover report</button>
			<button class="button button1">EEs Demographic report</button>
			<button class="button button1">EEs Compliance report</button>
			<button class="button button1">EEs Benefits report</button>
			<button class="button button1">EEs Performance report</button>
			<button class="button button1">EEs Compensation History</button>
			<button class="button button1">EE Leaves</button>


		</div>
		<!-- Reports Pane ends here -->

	</div>
	<!-- Closing container div tag-->
</body>
</html>