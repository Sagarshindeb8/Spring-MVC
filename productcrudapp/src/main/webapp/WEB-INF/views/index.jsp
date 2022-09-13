<html>
<head>
<%@include file="./base.jsp"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<style>
	body{

	background:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('https://media.istockphoto.com/photos/online-shopping-ecommerce-and-delivery-service-concept-paper-cartons-picture-id1024926532?k=20&m=1024926532&s=612x612&w=0&h=9_celYiqtFqAnGYcvY0B_Jt5zsmeo_QrwuMs76bv1HY=');
	background-repeat:no-repeat;
	height:100vh;
	background-size:cover;
	display:flex;
	color:white;	
}
</style>

</head>

<body>

 <!--
<img class="product" alt="productimage" src="<c:url value="/resources/images/product.jpg" />">

  
 
 <div class="product d-flex justify-content-center align-items-center">
  -->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
			
				<h1 class="text-center mb-4">Welcome to Product App</h1>

				<table class="table table-bordered">
					<thead class="bg-info">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${ products }" var="p">
						<tr>
							<th scope="row">${ p.id }</th>
							<td>${ p.name }</td>
							<td>${ p.description }</td>
							<td class="font-weight-bold">&#x20B9; ${ p.price }</td>
							<td>
								<a href="delete/${ p.id }"><i class="fa-solid fa-trash text-danger" style="font-size:20px;"></i></a>
								<a href="update/${ p.id }"><i class="fa-solid fa-pen text-primary" style="font-size:20px;"></i></a>
							</td>
						</tr>
					</c:forEach>
					
					</tbody>
				</table>
				
				<div class="container text-center">
					<a href="add-product" class="btn btn-success">Add Product</a>
				</div>

			</div>
		</div>
	</div>

</body>
</html>
