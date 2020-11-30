<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Add Students</title>
</head>
<body>
	<div class="container">
		<h3>Add Student</h3>
		<form:form method="get" action="addStudent" modelAttribute="Student">
			<table class="table">
				<tr>
					<td>First Name :</td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td>Last Name :</td>
					<td><form:input path="lastname" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td>Male <form:radiobutton path="gender" value="Male" />
						Female <form:radiobutton path="gender" value="Female" /></td>
				</tr>
				<tr>
					<td>Course :</td>
					<td><form:select path="course">
							<form:option value="Java" label="Java" />
							<form:option value="Spring" label="Spring" />
							<form:option value="JPA" label="JPA" />
							<form:option value="Python" label="Python" />
						</form:select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit"
						class="btn btn-success" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>