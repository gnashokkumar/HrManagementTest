<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Enter login credentials</h1>
<form method="post" action="HrLandingPage">
<p>User name: <input type="text" name="userid" id="uid"> </p>
<p>Password: <input type="password" name="password" id="pwd"> </p>

</br>
<p> <input type="submit" name="loginsubmit" id="loginsubmit">  </p>

<% 
String LoginMessage = (String)request.getAttribute("LoginMessage");
if (LoginMessage != null) {out.print(LoginMessage);}
%>
</form>
</body> 
</html>