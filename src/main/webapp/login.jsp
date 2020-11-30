<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form:form method="get" action="logincheck" modelAttribute="Student">
Login Id:<form:input path="firstname"/><br>
Password:<form:input path="lastname"/><br>
<input type="submit" value="Login">
</form:form>
</body>
</html>