<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<title>Home Page</title>
</head>
<body>

	<div class="container">
		<div class="card mx-auto mt-5 bg-primary" style="width: 50%;">
			<div class="card-body py-4">
				<form action="welcome" class="mt-3">
				<div  class="text-center">
					<input type="text" name="user" placeholder="Enter your name here">
				</div>
				<div  class="text-center mt-3">
					<button type="submit" class="btn btn-light">Say Hello!</button>
				</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>