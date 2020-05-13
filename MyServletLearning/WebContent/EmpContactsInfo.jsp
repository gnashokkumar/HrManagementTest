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
<body onload = "PageMode()">
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
				<button class="buttonHeader" disabled>Recruitment and Separation</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Benefits Administration</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Compensation Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Performance Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Workflows and Approvals</button>
			</div>
		</div>

		 <!--Code for employee contacts information pane starts here-->
    <div class="MainPane" id="EEContactsInfoPanel">
	<form method="post" action="InsertEmployeeContactsInfo">
      <p>
        <font face="Candara">Employee Contacts Information</font>
      </p>

      <!-- /* Employee ID */ -->

      <div class="row">
        <div class="col-25">
          <label for="empnum">
            <font face="Candara">Employee number</font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="EmpNum" name="empnum" value="${io_emp_id}">
		  <input type="hidden" id="AddEditFlag" name="AddEditFlag" value="">
        </div>
      </div>

      <!-- /* First Name of the Employee */ -->


      <div class="row">
        <div class="col-25">
          <label for="fname">
            <font face="Candara">Alpha Name </font>
          </label>
        </div>
        <div class="col-30">
          <input type="text" id="fname" name="firstname" value="${io_emp_first_name}">
        </div>
        <div class="col-15">
          <input type="text" id="mname" name="middlename" value="${io_emp_middle_name}">
        </div>
        <div class="col-30">
          <input type="text" id="lname" name="lastname" value="${io_emp_last_name}">
        </div>

      </div>



      <!-- /* Cell phone 1 of the Employee */ -->

      <div class="row">
        <div class="col-25">
          <label for="empCell01">
            <font face="Candara">Cell Phone 1 </font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="empCell01" name="empCell01" >
        </div>
      </div>

      <!-- /* Cell phone 2 of the Employee */ -->

      <div class="row">
        <div class="col-25">
          <label for="empCell02">
            <font face="Candara">Cell Phone 2 </font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="empCell02" name="empCell02" >
        </div>
      </div>
      
      <!-- /* Home phone 1 of the Employee */ -->

      <div class="row">
        <div class="col-25">
          <label for="homePhone01">
            <font face="Candara">Home Phone 1 </font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="homePhone01" name="homePhone01" >
        </div>
      </div>
      
      <!-- /* Home phone 2 of the Employee */ -->

      <div class="row">
        <div class="col-25">
          <label for="homePhone02">
            <font face="Candara">Home Phone 2 </font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="homePhone02" name="homePhone02" >
        </div>
      </div>
      
      <!-- /* Desk phone 1 of the Employee */ -->

      <div class="row">
        <div class="col-25">
          <label for="deskPhone01">
            <font face="Candara">Home Phone 2 </font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="deskPhone01" name="deskPhone01" >
        </div>
      </div>
      
      <!-- /* Emergency contacts of the Employee */ -->
      <div class="row">
        <div class="col-25">
          <label for="emergencycontact01">
            <font face="Candara">Emergency contact 1 </font>
          </label>
        </div>
        <div class="col-25">
          <input type="text" id="emergencyContact01_name" name="emergencyContact01_name" placeholder="Contact Name...">
        </div>
        <div class="col-25">
          <input type="text" id="emergencyContact01_relation" name="emergencyContact01_relation" placeholder="Relation...">
        </div>
        <div class="col-25">
          <input type="number" id="emergencyContact01_number" name="emergencyContact01_number" >
        </div>

      </div>
      
      <div class="row">
        <div class="col-25">
          <label for="emergencycontact02">
            <font face="Candara">Emergency contact 2 </font>
          </label>
        </div>
        <div class="col-25">
          <input type="text" id="emergencyContact02_name" name="emergencyContact02_name" placeholder="Contact Name...">
        </div>
        <div class="col-25">
          <input type="text" id="emergencyContact02_relation" name="emergencyContact02_relation" placeholder="Relation...">
        </div>
        <div class="col-25">
          <input type="number" id="emergencyContact02_number" name="emergencyContact02_number" >
        </div>

      </div>
      
       <!-- /* Email info of the Employee */ -->
       
       <div class="row">
        <div class="col-25">
          <label for="officialEmailId">
            <font face="Candara">Official e-mail</font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="officialEmailId" name="officialEmailId" >
        </div>
      </div>
      
      

      <div class="row">
        <div class="col-25">
          <label for="personalEmail_primary">
            <font face="Candara">Personal e-mail primary </font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="personalEmail_primary" name="personalEmail_primary" >
        </div>
      </div>
      
       <div class="row">
        <div class="col-25">
          <label for="personalEmail_secondary">
            <font face="Candara">Personal e-mail secondary </font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="personalEmail_secondary" name="personalEmail_secondary" >
        </div>
      </div>
      

      
      </br>
      


        <div class="row">
          <div class="row">
          <input type="button" id = "eeContactsCancel" value="Cancel">
          <input type="submit" id = "eeContactsNext" value="Next" >
          <input type="submit" id = "eeContactsSubmit" value="Submit">
        </div>
        </div>



      </form>

    </div> <!-- Closing Main Pane div tag-->
    <!--Code for employee contacts information pane ends here-->



		<div class="NavigationLeft">
			<p>
				<font face="Candara"><b>Employee Master</b></font>
			</p>
			<button class="button button1" onclick="showEEBasicInfo();">EE
				Basic Info.</button>
			<button class="button buttonselected" onclick="showEEContactsInfo();">EE
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

	/* $("#btnAjaxCall").click(function() {
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
	} */
	
	function PageMode() {
	const queryString = window.location.search;
	console.log(queryString);
	const urlParams = new URLSearchParams(queryString);
	const addEditMode = urlParams.get('AddEditMode')
	console.log(addEditMode);
	document.getElementById("EmpNum").setAttribute("disabled","disabled");
	document.getElementById("fname").setAttribute("disabled","disabled");
	document.getElementById("mname").setAttribute("disabled","disabled");
	document.getElementById("lname").setAttribute("disabled","disabled");
	
	if (addEditMode == "Add") {
		document.getElementById("eeContactsSubmit").setAttribute("disabled","disabled");
		document.getElementById("eeContactsSubmit").style.cursor = "default";
		document.getElementById("AddEditFlag").setAttribute("value","Add");
		console.log("Page opened in Add mode...");
	}
	else if (addEditMode == "Edit") {
		document.getElementById("eeContactsNext").setAttribute("disabled","disabled");
		document.getElementById("eeContactsNext").style.cursor = "default";
		document.getElementById("AddEditFlag").setAttribute("value","Edit");
		//document.getElementById("eeBasicSubmit").disable = true;
		console.log("Page opened in Edit mode...");
	}
	else {
		console.log("Neither Add nor Edit mode...");
	}
	}
</script>

</html>