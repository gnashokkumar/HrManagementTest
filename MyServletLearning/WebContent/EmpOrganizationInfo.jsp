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
<body onload="PageMode()">
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
				<button class="buttonHeader" disabled>Recruitment and
					Separation</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Benefits
					Administration</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Compensation
					Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Performance
					Management</button>
			</div>

			<div class="columnHeader">
				<button class="buttonHeader" disabled>Workflows and
					Approvals</button>
			</div>
		</div>

		<!--Code for employee ORGANIZATIONAL information pane starts here-->
    <div class="MainPane" id="EEOrgInfoPanel">
	<form method="post" action="InsertEmployeeOrganizationInfo">
      <p>
        <font face="Candara">Employee Organizational Information</font>
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
          <input type="text" id="fname" name="firstname" placeholder="EE Given name.." required>
        </div>
        <div class="col-15">
          <input type="text" id="mname" name="middlename" placeholder="Middle...">
        </div>
        <div class="col-30">
          <input type="text" id="lname" name="lastname" placeholder="EE last name.." required>
        </div>
        </div>

        <!-- /* Supervisor, Mentor and Team Name */ -->

        <div class="row">
          <div class="col-25">
            <label for="reportininfolabel">
              <font face="Candara">Repoting Info. </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="eesupervisor" name="eesupervisor" placeholder="Supervisor name.." required>
          </div>
          <div class="col-25">
            <input type="text" id="eementor" name="eementor" placeholder="Mentor..">
          </div>
          <div class="col-25">
            <input type="text" id="eeteam" name="eeteam" placeholder="Team name..">
          </div>

        </div>

        <!-- /* Position, Job Type and Job Step */ -->

        <div class="row">
          <div class="col-25">
            <label for="eejobinfolabel">
              <font face="Candara">Job code </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="eeposition" name="eeposition" placeholder="Position ID" required>
          </div>
          <div class="col-25">
            <input type="text" id="eejobtype" name="eejobtype" placeholder="Job Type..">
          </div>
          <div class="col-25">
            <input type="text" id="eejobstep" name="eejobstep" placeholder="Job Step..">
          </div>

        </div>

        <!-- /* Date in current position and date in current job */ -->

        <div class="row">
          <div class="col-25">
            <label for="eedateincurrentpositionlabel">
              <font face="Candara">Date in Current Position </font>
            </label>
          </div>
          <div class="col-25">
            <input type="date" id="eedateincurrentposition" name="eedateincurrentposition" required>
          </div>
          <div class="col-25">
            <label for="ee_date_in_current_job_label">
              <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Date in Current Job </font>
            </label>
          </div>
          <div class="col-25">
            <input type="date" id="ee_date_in_current_job" name="ee_date_in_current_job">
          </div>

        </div>

        <!-- /* Job Title and Union Code */ -->

        <div class="row">
          <div class="col-25">
            <label for="ee_job_title_label">
              <font face="Candara">Job Title </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="ee_job_title" name="ee_job_title" placeholder="Job Title..">
          </div>
          <div class="col-25">
            <label for="ee_union_code_label">
              <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Union Code </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="ee_union_code" name="ee_union_code" placeholder="Union Code..">
          </div>

        </div>

        <!-- /* Job Location and Job Category */ -->

        <div class="row">
          <div class="col-25">
            <label for="ee_job_location_label">
              <font face="Candara">Job Location </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="ee_job_location" name="ee_job_location" placeholder="Job Location..">
          </div>
          <div class="col-25">
            <label for="ee_job_category_label">
              <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Job Category </font>
            </label>
          </div>
          <div class="col-25">
            <input type="text" id="ee_job_category" name="ee_job_category" placeholder="Job Category..">
          </div>

        </div>

        </br>
        


		   <div class="row">
					<div class="row">
						<input type="button" id="eeOrganizationCancel" value="Cancel">
						<input type="submit" id="eeOrganizationNext" value="Next"> 
						<input type="submit" id="eeOrganizationSubmit" value="Submit">
					</div>
			</div>

        </form>

      </div> <!-- Closing Main Pane div tag-->
      <!--Code for employee ORGANIZATIONAL information pane ends here-->



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
			<button class="button buttonselected" onclick="showEEOrgInfo();">EE
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
	function PageMode() {
		const queryString = window.location.search;
		console.log(queryString);
		const urlParams = new URLSearchParams(queryString);
		const addEditMode = urlParams.get('AddEditMode')
		console.log(addEditMode);
		document.getElementById("EmpNum").setAttribute("disabled", "disabled");
		document.getElementById("fname").setAttribute("disabled", "disabled");
		document.getElementById("mname").setAttribute("disabled", "disabled");
		document.getElementById("lname").setAttribute("disabled", "disabled");

		if (addEditMode == "Add") {
			document.getElementById("eeOrganizationNext").setAttribute(
					"disabled", "disabled");
			document.getElementById("eeOrganizationNext").style.cursor = "default";
			document.getElementById("AddEditFlag").setAttribute("value", "Add");
			console.log("Page opened in Add mode...");
		} else if (addEditMode == "Edit") {
			document.getElementById("eeOrganizationNext").setAttribute("disabled",
					"disabled");
			document.getElementById("eeOrganizationNext").style.cursor = "default";
			document.getElementById("AddEditFlag")
					.setAttribute("value", "Edit");
			//document.getElementById("eeBasicSubmit").disable = true;
			console.log("Page opened in Edit mode...");
		} else {
			console.log("Neither Add nor Edit mode...");
		}
	}

	
</script>

</html>