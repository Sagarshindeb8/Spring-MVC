<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Page</title>
</head>
<body>
<h1>This is Contact Page</h1>
<h1>Data from Contact page: </h1>

	<%
		String name = (String) request.getAttribute("name");
		Integer rank = (Integer) request.getAttribute("rank");
		List<String> watch = (List<String>) request.getAttribute("w");
	%>
	
	<h1>Name: <%= name %></h1>
	<h1>Rank: <%= rank %></h1>
	<h1>Watch Collection:</h1>
	<%
		for(String s:watch) {
	%>
	
	<h2><%= s %></h2>
		
	<% } %>

</body>
</html>