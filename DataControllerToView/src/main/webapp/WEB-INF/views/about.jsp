<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>This is About Page</title>
	<h1>Data from About Page:</h1>
</head>
<body>
	<h1>Car Company: ${ Brand }</h1>
	<h1>Car Model: ${ varient }</h1>
	<h1>Car Cost: ${ cost }</h1>
	<h1>Quot Date: ${ time }</h1>

		<!-- To display the list add jstl dependency in pom.xml file and also add,
		
		 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
		
		google jstl uri.
		-->

	<c:forEach var="item" items="${ m}">
	
		<!-- or method 1 -->
		<%-- <h2>Average: ${ item }</h2>	 --%>
		
		<!-- or method 2 -->
		<c:out value="${item }"></c:out>
		
	</c:forEach>

</body>
</html>