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
				<h1 class="text-center mb-3">Update The Product Details</h1>
				<form action="${pageContext.request.contextPath}/handle-product-update" method="post">
					<input name = id value="${product.id}" type="hidden">
					<div class="form-group">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" id="name" 
							name="name"
							value="${product.name }">

					</div>
					<div class="form-group">
						<label for="description" class="form-label">Product
							Description</label>
						<textarea class="form-control" name="description" id="description" rows="5" 
						>${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="price" class="form-label">Product Price</label> <input
							type="text" class="form-control" id="price"
							 name="price"
							 value="${product.price }">
					</div>
					<div class = "container text-center mt-2">
						<a href="${pageContext.request.contextPath}/"
						class = "btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>