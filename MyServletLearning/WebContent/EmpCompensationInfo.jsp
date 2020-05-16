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

		<!--Code for employee COMPENSATION information pane starts here-->
    <div class="MainPane" id="EECompInfoPanel">
	<form method="post" action="InsertEmployeeCompensationInfo">
      <p>
        <font face="Candara">Employee Compensation Information</font>
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

      <!--/* Pay Frequency & Pay Class */ -->

      <div class="row">
        <div class="col-25">
          <label for="payfreqandclass">
            <font face="Candara">Pay Frequency and Pay Class</font>
          </label>
        </div>
        <div class="col-37">
          <select id="EEPayFreq" name="eepayfreq">
            <option value="BiWeekly">Bi-weekly</option>
            <option value="Monthly">Monthly</option>
            <option value="SemiMonthly">Semi-Monthly</option>
            <option value="Weekly">Weekly</option>
          </select>
        </div>

        <div class="col-37">
          <select id="EEPayClass" name="eepayclass">
            <option value="Hourly">Hourly</option>
            <option value="Salaried">Salaried</option>

          </select>
        </div>
      </div>

      <!-- /* Pay Grade and Pay Step */ -->


      <div class="row">
        <div class="col-25">
          <label for="paygradelabel">
            <font face="Candara">Pay Grade </font>
          </label>
        </div>
        <div class="col-25">
          <input type="text" id="eepaygrade" name="eepaygrade" placeholder="EE Pay Grade..">
        </div>
        <div class="col-25">
          <label for="paysteplabel">
            <font face="Candara"> &nbsp; &nbsp; &nbsp; &nbsp; Pay Step </font>
          </label>
        </div>
        <div class="col-25">
          <input type="text" id="eepaystep" name="eepaystep" placeholder="EE Pay Step..">
        </div>

      </div>

      <!-- /* SALARY */ -->

      <div class="row">
        <div class="col-25">
          <label for="eesalarylabel">
            <font face="Candara">Salary (Annual) </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eesalaryannual" name="eesalaryannual" step=".01" required>
        </div>
        <div class="col-25">
          <label for="eepayperiodsalary">
            <font face="Candara"> &nbsp; &nbsp; &nbsp; &nbsp; Pay Period Salary </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eepayperiodsalary" name="eepayperiodsalary" step=".01">
        </div>

      </div>

      <!-- /* Hourly rate and compa-ratio */ -->

      <div class="row">
        <div class="col-25">
          <label for="eehourlyratelabel">
            <font face="Candara">Hourly Rate </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eehourlyrate" name="eehourlyrate" step=".01" required>
        </div>
        <div class="col-25">
          <label for="eecomparatiolabel">
            <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Compa-Ratio </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eecomparatio" name="eecomparatio" step=".01">
        </div>

      </div>

      <!-- /* Standard hours and FTE */ -->

      <div class="row">
        <div class="col-25">
          <label for="eestandardhourslabel">
            <font face="Candara">Standard Hours </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eestandardhours" name="eestandardhours" required>
        </div>
        <div class="col-25">
          <label for="eeftellabel">
            <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; FTE </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eefte" name="eefte" step=".01">
        </div>

      </div>

      <!-- /* Standard hours per year */ -->

      <div class="row">
        <div class="col-25">
          <label for="eestdhoursperyearlabel">
            <font face="Candara">Standard Hours Per Year </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eestdhoursperyear" name="eestdhoursperyear" required>
        </div>
        <div class="col-25">
          <label for="eestddaysperyearlabel">
            <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Standard Days Per Year </font>
          </label>
        </div>
        <div class="col-25">
          <input type="number" id="eestddaysperyear" name="eestddaysperyear">
        </div>

      </div>

      <!-- /* Last and next review dates */ -->

      <div class="row">
        <div class="col-25">
          <label for="eelastsalreviewdatelabel">
            <font face="Candara">Last Salary Review Date </font>
          </label>
        </div>
        <div class="col-25">
          <input type="date" id="eelastsalreviewdate" name="eelastsalreviewdate" required>
        </div>
        <div class="col-25">
          <label for="eenextsalreviewdatelabel">
            <font face="Candara">&nbsp; &nbsp; &nbsp; &nbsp; Next Salary Review Date </font>
          </label>
        </div>
        <div class="col-25">
          <input type="date" id="eenextsalreviewdate" name="eenextsalreviewdate">
        </div>

      </div>


      </br>
      


        <div class="row">
					<div class="row">
						<input type="button" id="eeCompensationCancel" value="Cancel">
						<input type="submit" id="eeCompensationNext" value="Next"> 
						<input type="submit" id="eeCompensationSubmit" value="Submit">
					</div>
		</div>

      </form>

    </div> <!-- Closing Main Pane div tag-->
    <!--Code for employee COMPENSATION information pane ends here-->



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
			<button class="button buttonselected" onclick="showEECompInfo();">EE
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
			document.getElementById("eeCompensationSubmit").setAttribute(
					"disabled", "disabled");
			document.getElementById("eeCompensationSubmit").style.cursor = "default";
			document.getElementById("AddEditFlag").setAttribute("value", "Add");
			console.log("Page opened in Add mode...");
		} else if (addEditMode == "Edit") {
			document.getElementById("eeCompensationNext").setAttribute("disabled",
					"disabled");
			document.getElementById("eeCompensationNext").style.cursor = "default";
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