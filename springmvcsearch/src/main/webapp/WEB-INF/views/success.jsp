<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submitted Data</title>
</head>
<body>
<h1>Student Details:</h1>
<h1>Name: ${ student.name }</h1>
<h1>ID: ${ student.id }</h1>
<h1>DOB: ${ student.date }</h1>
<h1>Course: ${ student.courses }</h1>
<h1>Gender: ${ student.gender }</h1>
<h1>Type: ${ student.type }</h1>
<h1>Address street: ${ student.address.street }</h1>
<h1>Address city: ${ student.address.city }</h1>
</body>
</html>