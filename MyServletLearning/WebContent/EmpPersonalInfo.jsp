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

		<!--Code for employee personal information pane starts here-->
		<div class="MainPane" id="EEPersonalInfoPanel">
			<form method="post" action="InsertEmployeePersonalInfo">
				<p>
					<font face="Candara">Employee Personal Information</font>
				</p>
				<!-- /* Employee ID */ -->

				<div class="row">
					<div class="col-25">
						<label for="empnum"> <font face="Candara">Employee
								number</font>
						</label>
					</div>
					<div class="col-75">
						<input type="number" id="EmpNum" name="empnum"
							placeholder="EE identification number.."> <input
							type="hidden" id="AddEditFlag" name="AddEditFlag" value="">
					</div>
				</div>

				<!-- /* First Name of the Employee */ -->


				<div class="row">
					<div class="col-25">
						<label for="fname"> <font face="Candara">Alpha Name
						</font>
						</label>
					</div>
					<div class="col-30">
						<input type="text" id="fname" name="firstname"
							placeholder="EE Given name.." required>
					</div>
					<div class="col-15">
						<input type="text" id="mname" name="middlename"
							placeholder="Middle...">
					</div>
					<div class="col-30">
						<input type="text" id="lname" name="lastname"
							placeholder="EE last name.." required>
					</div>

				</div>

				<!-- /* Preferred Name */ -->

				<div class="row">
					<div class="col-25">
						<label for="prefname"> <font face="Candara">Preferred
								Name</font>
						</label>
					</div>
					<div class="col-75">
						<input type="text" id="PrefName" name="prefname"
							placeholder="Preferred Name..">
					</div>
				</div>

				<!-- /* Birth Name */ -->

				<div class="row">
					<div class="col-25">
						<label for="birthname"> <font face="Candara">Birth
								Name</font>
						</label>
					</div>
					<div class="col-75">
						<input type="text" id="BirhName" name="birthname"
							placeholder="Birth Name..">
					</div>
				</div>

				<!-- /* Birth Name */ -->

				<div class="row">
					<div class="col-25">
						<label for="additionalname"> <font face="Candara">Additional
								Name</font>
						</label>
					</div>
					<div class="col-75">
						<input type="text" id="AddtlName" name="addtlname"
							placeholder="Additional Name..">
					</div>
				</div>

				<!--/* Date of Birth */ -->

				<div class="row">
					<div class="col-25">
						<label for="dob"> <font face="Candara">Date of
								birth & Age</font>
						</label>
					</div>
					<div class="col-37">
						<input type="date" id="dob" name="dateofbirth"
							placeholder="Your date of birth.." required>
					</div>
					<div class="col-37">
						<input type="text" id="age" name="empage" disabled>
					</div>
				</div>

				<!--/* Gender and Marital Status */ -->

				<div class="row">
					<div class="col-25">
						<label for="dob"> <font face="Candara">Gender &
								Marital Status</font>
						</label>
					</div>
					<div class="col-37">
						<select id="Gender" name="gender">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="Other">Other</option>
						</select>
					</div>

					<div class="col-37">
						<select id="MaritalStatus" name="maritalstatus">
							<option value="Single">Single</option>
							<option value="Married">Married</option>
							<option value="Separated">Separated</option>
						</select>
					</div>
				</div>

				<!--Birth Info Labels-->
				<div class="row">
					<div class="col-25"></div>
					<div class="col-25">
						<label for="dateofbirth"> <font face="Candara">Date
								Of Birth </font>
						</label>

					</div>
					<div class="col-25">
						<label for="countryofbirth"> <font face="Candara">Country
								Of Birth </font>
						</label>
					</div>
					<div class="col-25">
						<label for="mothertongue"> <font face="Candara">Mother
								Tongue </font>
						</label>
					</div>
				</div>

				<!-- /* Birth Info */ -->


				<div class="row">
					<div class="col-25">
						<label for="birthinfo"> <font face="Candara">Birth
								Info </font>
						</label>
					</div>
					<div class="col-25">
						<input type="date" id="dateofbirth" name="dateofbirth">
					</div>
					<div class="col-25">
						<input type="text" id="countryofbirth" name="countryofbirth"
							placeholder="Country Of Birth..">
					</div>
					<div class="col-25">
						<input type="text" id="mothertongue" name="mothertongue"
							placeholder="Mother Tongue..">
					</div>

				</div>

				<!--Family Info Labels-->
				<div class="row">
					<div class="col-25"></div>
					<div class="col-25">
						<label for="spousename"> <font face="Candara">Name
						</font>
						</label>

					</div>
					<div class="col-25">
						<label for="spousedob"> <font face="Candara">Date
								Of Birth </font>
						</label>
					</div>
					<div class="col-25">
						<label for="mothertongue"> <font face="Candara">Dependent
								? </font>
						</label>
					</div>
				</div>

				<!-- /* Spouse Info */ -->


				<div class="row">
					<div class="col-25">
						<label for="spouseinfo"> <font face="Candara">Spouse
								Info </font>
						</label>
					</div>
					<div class="col-25">
						<input type="text" id="spousename" name="spousename"
							placeholder="Spouse Name..">
					</div>
					<div class="col-25">
						<input type="date" id="spousedateofbirth" name="spousedateofbirth">
					</div>

					<div class="col-6"></div>

					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">Yes</font> <input type="radio" id="spousedependentyes"
							name="spousedependent"
							onclick="insertRadioValueSpouse(this.value)" value="Yes">
							<input type="hidden" id="SpouseYesNo" name="SpouseYesNo"
							value=""> <span class="checkmark"></span>
						</label>
					</div>
					<div class="col-6"></div>
					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">No</font> <input type="radio" id="spousedependentno"
							name="spousedependent"
							onclick="insertRadioValueSpouse(this.value)" value="No" checked>
							<span class="checkmark"></span>
						</label>
					</div>

				</div>

				<!-- /* Father Info */ -->


				<div class="row">
					<div class="col-25">
						<label for="fatherinfo"> <font face="Candara">Father's
								Info </font>
						</label>
					</div>
					<div class="col-25">
						<input type="text" id="fathername" name="fathername"
							placeholder="Father Name..">
					</div>
					<div class="col-25">
						<input type="date" id="fatherdateofbirth" name="fatherdateofbirth">
					</div>

					<div class="col-6"></div>

					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">Yes</font> <input type="radio" id="fatherdependentyes"
							name="fatherdependent"
							onclick="insertRadioValueFather(this.value)" value="Yes">
							<input type="hidden" id="FatherYesNo" name="FatherYesNo"
							value=""> <span class="checkmark"></span>
						</label>
					</div>
					<div class="col-6"></div>
					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">No</font> <input type="radio" id="fatherdependentno"
							name="fatherdependent"
							onclick="insertRadioValueFather(this.value)" value="No" checked>
							<span class="checkmark"></span>
						</label>
					</div>

				</div>

				<!-- /* Mother's Info */ -->


				<div class="row">
					<div class="col-25">
						<label for="motherinfo"> <font face="Candara">Mother's
								Info. </font>
						</label>
					</div>
					<div class="col-25">
						<input type="text" id="mothername" name="mothername"
							placeholder="Mother Name..">
					</div>
					<div class="col-25">
						<input type="date" id="motherdateofbirth" name="motherdateofbirth">
					</div>

					<div class="col-6"></div>

					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">Yes</font> <input type="radio" id="motherdependentyes"
							name="motherdependent"
							onclick="insertRadioValueMother(this.value)" value="Yes">
							<input type="hidden" id="MotherYesNo" name="MotherYesNo"
							value=""> <span class="checkmark"></span>
						</label>
					</div>
					<div class="col-6"></div>
					<div class="col-6">
						<label class="container_radio"> <font face="Candara"
							size="2">No</font> <input type="radio" id="motherdependentno"
							name="motherdependent"
							onclick="insertRadioValueMother(this.value)" value="No" checked>
							<span class="checkmark"></span>
						</label>
					</div>

				</div>

				</br>



				<div class="row">
					<div class="row">
						<input type="button" id="eePersonalCancel" value="Cancel">
						<input type="submit" id="eePersonalNext" value="Next"> <input
							type="submit" id="eePersonalSubmit" value="Submit">
					</div>
				</div>

			</form>

		</div>
		<!-- Closing Main Pane div tag-->
		<!--Code for employee personal information pane ends here-->



		<div class="NavigationLeft">
			<p>
				<font face="Candara"><b>Employee Master</b></font>
			</p>
			<button class="button button1" onclick="showEEBasicInfo();">EE
				Basic Info.</button>
			<button class="button button1" onclick="showEEContactsInfo();">EE
				Contact Info.</button>
			<button class="button buttonselected" onclick="showEEPersonalInfo();">EE
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
			document.getElementById("eePersonalSubmit").setAttribute(
					"disabled", "disabled");
			document.getElementById("eePersonalSubmit").style.cursor = "default";
			document.getElementById("AddEditFlag").setAttribute("value", "Add");
			console.log("Page opened in Add mode...");
		} else if (addEditMode == "Edit") {
			document.getElementById("eePersonalNext").setAttribute("disabled",
					"disabled");
			document.getElementById("eePersonalNext").style.cursor = "default";
			document.getElementById("AddEditFlag")
					.setAttribute("value", "Edit");
			//document.getElementById("eeBasicSubmit").disable = true;
			console.log("Page opened in Edit mode...");
		} else {
			console.log("Neither Add nor Edit mode...");
		}
	}

	function insertRadioValueSpouse(spousedependent) {

		document.getElementById("SpouseYesNo").value = spousedependent;
	}

	function insertRadioValueFather(fatherdependent) {

		document.getElementById("FatherYesNo").value = fatherdependent;
	}

	function insertRadioValueMother(motherdependent) {

		document.getElementById("MotherYesNo").value = motherdependent;
	}
	
	function calculateEmployeeAge() {
		
	}
</script>

</html>