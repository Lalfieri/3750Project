<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		
		<title>Business Account Confirmation</title>
	</head>
	
	<body>
					
		<div class="header">
			<h1>Welcome to MenU!</h1>
		    <img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
			<ul>
				<li><a href="home">Home</a></li>
				<li><a href="">Contact Us</a></li>
			</ul>
		</div>
		
		<div class="block">
			Account created under: ${business.firstName} ${business.lastName}
			<br><br>
			Registered phone number: ${business.phoneNum}
			<br><br>
			Email: ${business.email}
			
			<form:form action="sendBiz">
				<input type="submit" value="Get Started">
				
			</form:form>
		</div>
		
	</body>
	
</html>