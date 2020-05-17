<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="HexCMIndex.css">
<link rel="stylesheet" href="HexCMLandingPage.css">
<meta charset="ISO-8859-1">
<title>HexCM Login</title>
</head>
<body>
	<div class="container"
		style="background-color: #fcfcfc; color: #fcfcfc">
		<div class="cardLogin" style="background-color: #1e4a6d;">
			<form method="post" action="HrLandingPage">
				<div class="row">
					<div class="col-100">
						<h2>
							<font face="calibri">HexCM Login </font>
						</h2>
					</div>
				</div>

				<div class="row">
					<div class="col-50">

						<label for="empnum"> <font face="calibri"
							style="font-size: 18px;">User Name</font>
						</label>

					</div>
					<div class="col-50">
						<input type="text" name="userid" id="uid"
							style="width: 200px; float: left">

					</div>
				</div>

				<div class="row">
					<div class="col-50">
						<label for="empnum"> <font face="calibri"
							style="font-size: 18px;">Password</font>
						</label>
					</div>
					<div class="col-50">
						<input type="password" name="password" id="pwd"
							style="width: 200px; float: left">
					</div>
				</div>


				<div class="row">
					<div class="col-50"></div>
					<div class="col-50">

						<input type="submit" name="loginsubmit" id="loginsubmit"
							value="Submit" style="margin: 0;">

					</div>
				</div>
			</form>
		</div>
	</div>

	<%
		String LoginMessage = (String) request.getAttribute("LoginMessage");
	if (LoginMessage != null) {
		out.print(LoginMessage);
	}
	%>

</body>
</html>