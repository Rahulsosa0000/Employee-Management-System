<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
	
	 <%@page isELIgnored="false" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home-Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-primary">
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
				    <li class="nav-item"><a class="nav-link" href="search">Search</a></li> <!-- Search Page -->
					
					</li>
				</ul>
		    </div>
		</div>
	</nav>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-body">
						
					<h4>Emp-Details</h4>
					<c:if test="${not empty msg}">
					<h4 class="text-success">${msg }</h4>
					<c:remove var="msg"/>
					</c:if>
						
						</div>
						
						

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Full-Name</th>
									<th scope="col">Address</th>
									<th scope="col">Email</th>
									<th scope="col">Password</th>
									<th scope="col">Designation</th>
									<th scope="col">Salary</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							
							    <!-- Use EL to dynamically populate the table -->
                            <c:forEach var="emp" items="${employees}">
                                <tr>
                                    <td>${emp.id}</td>
                                    <td>${emp.fullname}</td>
                                    <td>${emp.address}</td>
                                    <td>${emp.email}</td>
                                    <td>${emp.password}</td>
                                    <td>${emp.designation}</td>
                                    <td>${emp.salary}</td>
                                    <td>
                                        <a href="editEmp/${emp.id}" class="btn btn-sm btn-primary">Edit</a>
                                        <a href="deleteEmp/${emp.id}" class="btn btn-sm btn-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
								
								
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>