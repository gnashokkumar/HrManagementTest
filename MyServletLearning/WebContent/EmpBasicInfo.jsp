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

		<div class="MainPane" id="EEBasicInfoPanel">
     <form method="post" action="InsertEmployeeBasicInfo">
      <p>
        <font face="Candara">Employee Basic Information</font>
      </p>

      <!-- /* Employee ID */ -->

      <div class="row">
        <div class="col-25">
          <label for="empnum">
            <font face="Candara">Employee number</font>
          </label>
        </div>
        <div class="col-75">
          <input type="number" id="EmpNum" name="empnum" placeholder="EE identification number..">
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
          <input type="text" id="fname" name="firstname" placeholder="EE Given name.." >
        </div>
        <div class="col-15">
          <input type="text" id="mname" name="middlename" placeholder="Middle...">
        </div>
        <div class="col-30">
          <input type="text" id="lname" name="lastname" placeholder="EE last name.." >
        </div>

      </div>



      <!-- /* Legal Entity */ -->

      <div class="row">
        <div class="col-25">
          <label for="legalentity">
            <font face="Candara">Legal Entity</font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="lentity" name="legalentity" placeholder="Legal entity..." >
        </div>
      </div>
      <!-- /* Division */ -->

      <div class="row">
        <div class="col-25">
          <label for="bu">
            <font face="Candara">Division</font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="division" name="division" placeholder="Division">
        </div>
      </div>

      <!-- /* Business Unit */ -->

      <div class="row">
        <div class="col-25">
          <label for="bu">
            <font face="Candara">Business Unit</font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="bu01" name="businessunit" placeholder="Business Unit.." >
        </div>
      </div>

      <!-- /* Department */ -->

      <div class="row">
        <div class="col-25">
          <label for="department">
            <font face="Candara">Department</font>
          </label>
        </div>
        <div class="col-75">
          <input type="text" id="dept" name="department" placeholder="EE department.." >
        </div>
      </div>

      <!-- /* Country of employment */ -->

      <div class="row">
        <div class="col-25">
          <label for="country">
            <font face="Candara">Country</font>
          </label>
        </div>
        <div class="col-75">
          <select id="country" name="country" >
            <option value="India">India</option>
            <option value="Australia">Australia</option>
            <option value="Canada">Canada</option>
            <option value="USA">USA</option>
          </select>
        </div>
      </div>
      <!--Status Labels-->
      <div class="row">
        <div class="col-25">

        </div>
        <div class="col-25">
          <label for="employeepaystatus">
            <font face="Candara">Pay Status </font>
          </label>

        </div>
        <div class="col-25">
          <label for="eeemploymentstatus">
            <font face="Candara">Employment Status </font>
          </label>
        </div>
        <div class="col-25">
          <label for="eebenstatus">
            <font face="Candara">Benefit Status </font>
          </label>
        </div>

      </div>
      <!-- /* Employee statuses */ -->
      <div class="row">
        <div class="col-25">
          <label for="eepaystatus">
            <font face="Candara">Employee Statuses </font>
          </label>
        </div>
        <div class="col-25">
          <select id="paystatus" name="paystatus">
            <option value="Active">Active</option>
            <option value="Longleave">Long Leave</option>
            <option value="Inactive">Inactive</option>
            <option value="Waitinglastcheck">Waiting Last Check</option>
            <option value="Terminated">Terminated</option>
          </select>

        </div>
        <div class="col-25">
          <select id="employmentstatus" name="employmentstatus">
            <option value="Fulltime">Full Time</option>
            <option value="Parttime">Part Time</option>
            <option value="Contractor">Contractor</option>
            <option value="Contractortohire">Contractor to Hire</option>
            <option value="Probationary">Probationary</option>
            <option value="Intern">Intern</option>
          </select>
        </div>
        <div class="col-25">
          <select id="benefitstatus" name="benefitstatus">
            <option value="Active">Active</option>
            <option value="Inactive">Inactive</option>
            <option value="Nobenefit">No Benefits</option>
          </select>
        </div>

      </div>

      <!--Start date Labels-->
      <div class="row">
        <div class="col-25">

        </div>
        <div class="col-25">
          <label for="originalhiredate">
            <font face="Candara">Original Hire Date </font>
          </label>

        </div>
        <div class="col-25">
          <label for="startdate">
            <font face="Candara">Start Date </font>
          </label>
        </div>
        <div class="col-25">
          <label for="paystartdate">
            <font face="Candara">Pay Start Date </font>
          </label>
        </div>
      </div>

      <!-- /* Start dates */ -->


      <div class="row">
        <div class="col-25">
          <label for="startdates">
            <font face="Candara">Start Dates </font>
          </label>
        </div>
        <div class="col-25">
          <input type="date" id="originalhiredate" name="originalhiredate" placeholder="Oiginal Hire Date.." >
        </div>
        <div class="col-25">
          <input type="date" id="startdate" name="startdate" placeholder="Start Date.." >
        </div>
        <div class="col-25">
          <input type="date" id="paystartdate" name="paystartdate" placeholder="Pay Start Date.." >
        </div>

      </div>

      <!--Stop date Labels-->
      <div class="row">
        <div class="col-25">

        </div>
        <div class="col-25">
          <label for="dateresigned">
            <font face="Candara">Date Resigned </font>
          </label>

        </div>
        <div class="col-25">
          <label for="paystopdate">
            <font face="Candara">Pay Stop Date </font>
          </label>
        </div>
        <div class="col-25">
          <label for="datetermminated">
            <font face="Candara">Date Terminated </font>
          </label>
        </div>
      </div>

      <!-- /* Stop dates */ -->


      <div class="row">
        <div class="col-25">
          <label for="stopdates">
            <font face="Candara">Stop Dates </font>
          </label>
        </div>
        <div class="col-25">
          <input type="date" id="dateresigned" name="dateresigned" placeholder="Date Resigned..">
        </div>
        <div class="col-25">
          <input type="date" id="paystopdate" name="paystopdate" placeholder="Pay Stop Date..">
        </div>
        <div class="col-25">
          <input type="date" id="dateterminated" name="dateterminated" placeholder="Date Terminated..">
        </div>

      </div>
      
      </br>
     

        <div class="row">
          <input type="button"  id = "eeBasicCancel" value="Cancel">
          <input type="button" id = "eeBasicNext" value="Next">
          <input type="submit" id = "eeBasicSubmit" value="Submit">
        </div>

      </form>
    </div> <!-- Closing Main Pane div tag-->



		<div class="NavigationLeft">
			<p>
				<font face="Candara"><b>Employee Master</b></font>
			</p>
			<button class="button buttonselected" onclick="showEEBasicInfo();">EE
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
	
	function PageMode() {
	const queryString = window.location.search;
	console.log(queryString);
	const urlParams = new URLSearchParams(queryString);
	const addEditMode = urlParams.get('AddEditMode')
	console.log(addEditMode);
	
	if (addEditMode == "Add") {
		document.getElementById("eeBasicNext").setAttribute("disabled","disabled");
		document.getElementById("eeBasicNext").style.cursor = "default";
		console.log("Page opened in Add mode...");
	}
	else if (addEditMode == "Edit") {
		document.getElementById("eeBasicSubmit").disable = true;
		console.log("Page opened in Edit mode...");
	}
	else {
		console.log("Neither Add nor Edit mode...");
	}
	}
</script>

</html>