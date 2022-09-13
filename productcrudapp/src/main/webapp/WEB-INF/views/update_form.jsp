<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<%@include file="./base.jsp" %>
	
	<style>
	body{

	background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('https://img.freepik.com/premium-photo/shopping-cart-laptop-text-update-yellow-paper-business-concept_297535-1958.jpg?w=996');
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
					<h1 class="text-center mb-3">Change Product Details</h1>
					
					<form action="${pageContext.request.contextPath}/handle-product" method="post">
					
						<input type="hidden" value="${product.id}" name="id" />
					
						<div class="form-group">
							<label for="name">Product Name</label>
							<input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the Product name" 
							value="${product.name}">
						</div>
						
						<div class="form-group">
							<label for="description">Product Description</label>
							<textarea class="form-control" id="description" rows="5" name="description" placeholder="Enter the Product description">${product.description}</textarea>
						</div>
						
						<div class="form-group">
							<label for="price">Product Price</label>
							<input type="text" class="form-control" id="price" name="price" placeholder="Enter the Product price"
							value="${product.price}">
						</div>
						
						<div class="container text-center">
							<a href="${ pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-warning">Update</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>




</body>
</html>