<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="jakarta.tags.core"%>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-Emp</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Employee-Management-System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="addEmp">Add-Emp</a>
					</li>
				</ul>
		    </div>
		</div>
	</nav>

	

	<!-- Add Employee Form -->
<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-lg-6 col-md-8">
			<div class="card shadow-lg border-0 rounded-3">
				<div class="card-header bg-primary text-white text-center">
					<h4 class="mb-0">Add Employee</h4>
					<c:if test="${not empty msg}">
					 <h4>${msg }</h4>
					<c:remove var="msg"/>
					</c:if>
					
				</div>
				<div class="card-body p-4">
					<form action="createEmp" method="post">
						<div class="mb-3">
							<label for="fullName" class="form-label">Full Name</label>
							<input type="text" id="fullName" name="fullname"
								class="form-control" placeholder="Enter full name">
						</div>
						<div class="mb-3">
							<label for="address" class="form-label">Address</label>
							<input type="text" id="address" name="address"
								class="form-control" placeholder="Enter address">
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label>
							<input type="email" id="email" name="email"
								class="form-control" placeholder="Enter email">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label>
							<input type="password" id="password" name="password"
								class="form-control" placeholder="Enter password">
						</div>
						<div class="mb-3">
							<label for="designation" class="form-label">Designation</label>
							<input type="text" id="designation" name="designation"
								class="form-control" placeholder="Enter designation">
						</div>
						<div class="mb-3">
							<label for="salary" class="form-label">Salary</label>
							<input type="text" id="salary" name="salary"
								class="form-control" placeholder="Enter salary">
						</div>
						<div class="d-grid">
							<button type="submit" class="btn btn-primary btn-lg">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>