<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>MenU Business Login</title>
		
		<style>
			.error {color:red}
		</style>
	</head>
	
	<body>
		MenU Business Login<br><br>
		
		<form:form action="login" modelAttribute="business">
			Email: <form:input path="email"/>
			<form:errors path="email" cssClass="error"/>
			
			<br><br>
			Password: <form:input path="passWord"/>
			<form:errors path="passWord" cssClass="error"/>
			
			<br><br>
			<input type="submit" value="Login">
		</form:form>

		<br><br>
		Don't have an account with us?
		<form:form action="newAccount" modelAttribute="business">
			<input type="submit" value="Create Account">
			
		</form:form>
	
	</body>
</html>