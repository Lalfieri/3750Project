<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Business Account Confirmation</title>
	</head>
	
	<body>
		Welcome to MenU!
		<br><br>
		Account created under: ${business.firstName} ${business.lastName}
		<br><br>
		Registered phone number: ${business.phoneNum}
		<br><br>
		Email: ${business.email}
		
		<form:form action="Continue" modelAttribute="business">
			<input type="submit" value="Get Started">
			
		</form:form>
		
	</body>
	
</html>