<!-- tag to display the errors on form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<htmllang-"en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS 
	<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body class="" style="background:#e2e2e2;">

	<div class="container mt-4">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						
						<div class="alert alert-danger" role="alert">
  							<form:errors path="student.*"/>
						</div>
						
						<form action="handleform" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Your Name</label>
								<input name="name" type="text" class="form-control" id="exampleInputEmail1">
								<small id="emailHelp" class="form-text text-muted">We'll never share your name with anyone</small>
							</div>
							
							<div class="form-group">
								<label for"exampleInputEmail1">Your ID</label>
								<input name="id" type="text" class="form-control" id="emailInputEmail1" placeholder="Enter ID">
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Your DOB</label>
								<input name="date" type="text" class="form-control" placeholder="dd/mm/yyyy" id="exampleInputEmail1">
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Select Courses</label>
								<select name="courses" class="form-control" id="emailInputEmail1" multiple>
									<option>Java</option>
									<option>Python</option>
									<option>C++</option>
									<option>Angular</option>
									<option>Spring Framework</option>									
								</select>
							</div>
							
							<div class="form-group">
								<span class="mr-3">Select Gender</span>
								<div class="form-check form-check-inline">
									<input class="'form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
									<label class="form-check-label" for="inllineRadio1">Male</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="'form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
									<label class="form-check-label" for="inllineRadio2">Female</label>
								</div>
							</div>
							
							<div class="form-group">
								<label for="">Select type</label>
								<select class="form-control" name="type">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>								
								</select>
							</div>
							
							<div class="card">
								<div class="card-body">
									<p>Address</p>
								
								<div class="form-group">
									<input type="text" class="form-control" name="address.street" placeholder="Enter street" />
								</div>	
								
								<div class="form-group">
									<input type="text" class="form-control" name="address.city" placeholder="Enter city" />
								</div>						
								</div>							
							</div>
							
							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>