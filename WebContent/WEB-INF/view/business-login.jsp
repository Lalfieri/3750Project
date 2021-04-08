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
			  <li><a href="home">Home</a></li>
			  <li><a href="">Contact Us</a></li>
			</ul>
		</div>
		
		<div class="myForm">
		
			<div class="myHeader">
				Login with an existing account
			</div>
			<br><br>
		
			<form:form action="login" modelAttribute="business">
				<label>Email: </label><form:input path="email"/>
				<form:errors path="email" cssClass="error"/>
				
				<br><br>
				<label>Password: </label><form:input id="pw" path="passWord" type="password"/>
				<form:errors path="passWord" cssClass="error"/>

				<br><br>
				<input type="checkbox" onclick="toggleShow()">Show Password
				
				<br><br>
				<div class="button">
					<input type="submit" value="Login">
				</div>
			</form:form>
	
			<br><br>
			Don't have an account with us?
			<br><br>
			
			Create one
			<a href="newAccount">here</a>
		
		</div>
		
		<script>
			function toggleShow() {
			  var first = document.getElementById("pw");
			  if (first.type === "password") {
			    first.type = "text";
			  } else {
			    first.type = "password";
			  }
			}
		</script>
	
	</body>
</html>