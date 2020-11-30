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
<title>Login</title>
</head>
<body>
	<div class="container">
	<h3>Login</h3>
			<form:form method="get" action="logincheck" modelAttribute="Student">
			<table class="table">
				<tr>
				<td>Login Id : </td>
				<td><form:input path="firstname" /></td>
				</tr>
				<tr>
				<td>Password : </td>
				<td><form:input path="lastname" /></td>
				</tr>
				<tr>
				<td></td>
				<td><input type="submit" value="Login" class="btn btn-success"></td>
				</tr>
			</table>
			</form:form>
		</div>
</body>
</html>