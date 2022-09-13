<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>
<h1 style="color:green">${ msg }</h1>
	<h1>Welcome, ${ user.email }</h1>
	<h1>Your username is: ${ user.username }</h1>
	<h1>Your password is: ${ user.password }</h1>
	<h3>Try to secure your password</h3>

</body>
</html>