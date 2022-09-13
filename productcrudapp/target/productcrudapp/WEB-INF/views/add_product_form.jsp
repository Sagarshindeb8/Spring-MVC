<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<%@include file="./base.jsp" %>
	
<style>
	body{

	background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('https://media.istockphoto.com/photos/shopping-cart-with-words-add-to-cart-on-dark-background-picture-id1251482208?k=20&m=1251482208&s=612x612&w=0&h=zvclZ__boWk0_-Y7QSr1GoJcN-aXYobpeUvaazVZmbE=');
	background-repeat:no-repeat;
	height:100vh;
	background-size:cover;
	display:flex;
	color:white;	
}
</style>
	
</head>
<body>
		
		<div class="container mt-3">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<h1 class="text-center mb-3">Fill the Product Details</h1>
					
					<form action="handle-product" method="post">
						<div class="form-group">
							<label for="name">Product Name</label>
							<input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the Product name">
						</div>
						
						<div class="form-group">
							<label for="description">Product Description</label>
							<textarea class="form-control" id="description" rows="5" name="description" placeholder="Enter the Product description"></textarea>
						</div>
						
						<div class="form-group">
							<label for="price">Product Price</label>
							<input type="text" class="form-control" id="price" name="price" placeholder="Enter the Product price">
						</div>
						
						<div class="container text-center">
							<a href="${ pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-primary">Add</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>




</body>
</html>