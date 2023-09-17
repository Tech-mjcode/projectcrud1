<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./base.jsp"%>

</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill The Product Details</h1>
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" id="name" 
							name="name"
							placeholder="Enter Product Name">

					</div>
					<div class="form-group">
						<label for="description" class="form-label">Product
							Description</label>
						<textarea class="form-control" name="description" id="description" rows="5" 
						placeholder="Enter Product Description"></textarea>
					</div>
					<div class="form-group">
						<label for="price" class="form-label">Product Price</label> <input
							type="text" class="form-control" id="price"
							 name="price"
							 placeholder="Enter Product Price">
					</div>
					<div class = "container text-center mt-2">
						<a href="${pageContext.request.contextPath}/"
						class = "btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>