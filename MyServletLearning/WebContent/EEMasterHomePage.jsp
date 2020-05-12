<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="HexCMIndex.css">
<link rel="stylesheet" href="HexCMLandingPage.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

			<p>

				<button class="button_hr" id="btnAjaxCall" value="Ajax Call">Find
					Employees</button>

				<!-- 	<input type="number" name="emp_id_search" placeholder="EE number"/>   -->
				
				<button class="button_hr">Add Employee</button>

				<button class="button_hr">Edit Employee Info.</button>

			</p>

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
</script>
</html>