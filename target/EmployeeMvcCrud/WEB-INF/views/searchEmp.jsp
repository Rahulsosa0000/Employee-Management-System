<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Employee-Management-System</a>
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="addEmp">Add Employee</a></li>
        </ul>
    </div>
</nav>

<div class="container mt-4">
    <h4>Search Employee by ID</h4>
    <form action="${pageContext.request.contextPath}/search" method="get">
        <div class="mb-3">
            <label for="empId" class="form-label">Employee ID</label>
            <input type="number" name="id" class="form-control" id="empId" placeholder="Enter Employee ID" required>
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <div class="mt-4">
        <h5>Employee Details</h5>
        <table class="table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Password</th>
                <th>Designation</th>
                <th>Salary</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${employee != null}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.fullname}</td>
                    <td>${employee.address}</td>
                    <td>${employee.email}</td>
                    <td>${employee.password}</td>
                    <td>${employee.designation}</td>
                    <td>${employee.salary}</td>
                </tr>
            </c:if>
            <c:if test="${employee == null}">
                <tr>
                    <td colspan="7" class="text-center">No employee found with the provided ID.</td>
                </tr>
            </c:if>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFY0YWONsBdsuENZT9GNuclfl2RT5nQk56zMKzM9K9g3i9a9HUON7TU6Qs"
        crossorigin="anonymous"></script>
</body>
</html>
