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
					<button class="button2">Logout</button>
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
				<font face="Candara">Search Employees</font>
			</p>
			<div class="row">
				<div class="col-20">
					<input type="number" id="emp_id_search" name="emp_id_search"
						placeholder="EE number..">

				</div>
				<div class="col-20">
					<input type="text" id="emp_fname_search" name="emp_fname_search"
						placeholder="EE first name..">
				</div>
				<div class="col-20">
					<input type="text" id="emp_lname_search" name="emp_lname_search"
						placeholder="EE last name..">
				</div>
				<div class="col-20">
					<input type="text" id="legal_entity_search"
						name="legal_entity_search" placeholder="Legal entity..">
				</div>
				<div class="col-20">
					<input type="date" id="pay_start_date_search"
						name="pay_start_date_search">
				</div>

			</div>

			

				
		<span>		<button class="button_hr" id="btnAjaxCall" value="Ajax Call">Find
					Employees</button> 
				

				<!-- 	<input type="number" name="emp_id_search" placeholder="EE number"/>   -->
		
				<button class="button_hr" id="AddEmployeeButton" value="AddEmployeeButton">Add Employee</button>
	
				
				
				<button class="button_hr" id="EditEmployeeButton" value="EditEmployeeButton">Edit Employee Info.</button>
				
				
				</span>

			

			<table>
				<thead>
					<tr>
						<th>Select</th>
						<th>Employee Number</th>
						<th>Alpha Name</th>
						<th>Legal Entity</th>
						<th>Pay Status</th>
						<th>Benefit Status</th>
						<th>Pay Start Date</th>
						<th>Country</th>
					</tr>
				</thead>
				<tbody class="display-data">
					<!--  <div class="display-data"> -->

					<!-- Ajax call comes here -->

					<!--  </div>  -->
				</tbody>

				<tfoot>

				</tfoot>
			</table>
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

<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	
</script>

<script>
	var count = 0;

	$("#btnAjaxCall").click(function() {
		fetchDataAndDisplay();
	});

	function fetchDataAndDisplay() {
		$
				.ajax({
					url : "QueryEmployeeBasicInfo",
					method : "GET"
				})
				.done(
						function(data) {
							//		var start = count > 0 ? 5 * count : count;
							//		var end = start + 5;
							var str = '';
							for (var i = 0; i < data.length; i++) {
								str += '<tr>'
										+ '<td><input type="radio" name="EmployeeGrid"> </input></td>'
										+ '<td>' + data[i].emp_id + '</td>'
										+ '<td>' + data[i].emp_alpha_name
										+ '</td>' + '<td>'
										+ data[i].legal_entity + '</td>'
										+ '<td>' + data[i].emp_pay_status
										+ '</td>' + '<td>'
										+ data[i].emp_ben_status + '</td>'
										+ '<td>' + data[i].emp_pay_start_date
										+ '</td>' + '<td>'
										+ data[i].emp_country + '</td>'
										+ '</tr>';

							}

							//		if(start == data.length){
							//			count = 0;
							//			$(".display-data").empty();
							//			$(".display-data").append("List Traversed. Start over!");
							//			return;
							//		}

							//		count++;
							$(".display-data").empty();
							$(".display-data").append(str);
						}).fail(function() {
					alert("error");
				})
	}
	
	$("#AddEmployeeButton").click(function() {
		addButton_onclick();
	});
	
	function addButton_onclick() {
		   $.ajax({
		          type : "get",
		          url : "AddOrEditEmpInfo?",
		          data : {
		        	  AddEditFlag: "Add"
		        	  },
		          dataType : 'json',
		          timeout : 100000,
		          contentType:'application/json',
		          success : function(data) {
		              console.log("SUCCESS: ", data);
		              window.location = data.url;
		          },
		          error: function(data, xhr, status, error){
		              var errorMessage = xhr.status + ': ' + xhr.statusText
		              console.log("ERROR: ", errorMessage);
		          },
		          done : function(e) {
		              console.log("DONE");
		          }
		      });
		}
</script>

</html>