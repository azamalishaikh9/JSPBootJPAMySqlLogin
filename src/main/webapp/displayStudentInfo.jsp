<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Students List</title>
</head>
<body>
	<div class="container">
	<h3>Student List</h3>
			<table class="table table-striped table-hover">
				<tr class="thead-dark ">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Gender</th>
					<th colspan="2">Action</th>
				</tr>

				<c:forEach var="Stu" items="${StudentList}">
					<tr>
						<td>${Stu.firstname}</td>
						<td>${Stu.lastname}</td>
						<td>${Stu.course}</td>
						<td>${Stu.gender}</td>
						<td><a href="http://localhost:8090/${Stu.studentId}"  class="btn btn-success">Edit</a></td>
						<td><a href="http://localhost:8090/delete/${Stu.studentId}"  class="btn btn-danger">Delete</a></td>
					</tr>

				</c:forEach>
			</table>
			<br> <br> <br> <a href="http://localhost:8090/add"  class="btn btn-primary">Add
				Student</a> <a href="http://localhost:8090/logout"  class="btn btn-secondary">Logout</a>
		</div>
</body>
</html>