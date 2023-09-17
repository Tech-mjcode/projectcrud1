
<html>
<head>
<%@ include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col md-12">
				<h1 class="text-center">Welcome to product App</h1>
				<table class="table table-striped mt-5">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">PRODUCTID-${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#8377;${p.price }</td>
								<td><a href="delete/${p.id }"> <i
										class="fa-solid fa-trash text-danger" style="font-size: 25px"></i>
								</a> <a href="update/${p.id }"> <i
										class="fa-regular fa-pen-to-square" style="font-size: 25px"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container">
					<div class="row ">
						<div class="col md-12 text-center" >
							<a class="btn btn-success" href="add-form">Add Product</a>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
</body>
</html>
