<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<style>
			.error {color:red}
		</style>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	</head>
	
	<body>
		<div class="header">
			<h1>MenU - Business Login</h1>
			<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
			<ul>
			  <li><a href="">Home</a></li>
			  <li><a href="">Contact Us</a></li>
			</ul>
		</div>
		
		<div>
		
		<form:form action="login" modelAttribute="business">
			Email: <form:input path="email"/>
			<form:errors path="email" cssClass="error"/>
			
			<br><br>
			Password: <form:input path="passWord"/>
			<form:errors path="passWord" cssClass="error"/>
			
			<br><br>
			<input type="submit" value="Login">
		</form:form>
		
		</div>

		<br><br>
		Don't have an account with us?
		<form:form action="newAccount" modelAttribute="business">
			<input type="submit" value="Create Account">
			
		</form:form>
	
	</body>
</html>