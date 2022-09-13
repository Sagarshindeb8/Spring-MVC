<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Submitted</title>
</head>
<body>
<P>${ MadeBy }</P>
<P>${ Tech }</P>
	<h1>${ Header }</h1>
	<h2>Usage: ${ userfeedback.text1 }</h2>
	<h2>Application: ${ userfeedback.text2 }</h2>
	<h2>Suggestion: ${ userfeedback.text3 }</h2>
</body>
</html>