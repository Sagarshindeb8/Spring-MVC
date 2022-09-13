<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<h1>This is Home Page</h1>
<h1>Data from Home Page Controller:</h1>

<% 
	String value = (String) request.getAttribute("name");
	Integer Rank = (Integer) request.getAttribute("rank");
	List<String> car = (List<String>) request.getAttribute("c");
%>

<h1>Name: <%= value %> </h1>
<h1>Rank: <%= Rank %> </h1>
<h1>Car colection:
	<% 
		for(String s:car) { 
	%>
	
	<h2><%= s %></h2>
	
	<% } %>
		
</body>
</html> 