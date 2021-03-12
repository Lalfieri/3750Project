<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		
		<style>
			.error {color:red}
		</style>
	</head>
	
	<body>
	
		<div class="header">
			<h1>MenU - Business Create New Account</h1>
			<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
		</div>
		
		Welcome to MenU! Let's get started.<br><br>
		<form:form action="processForm" modelAttribute="business">
			
			First Name (*): <form:input path="firstName" />
			<form:errors path="firstName" cssClass="error"/>
			
			<br><br>
			Last Name (*): <form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"/>
			
			<br><br>
			Phone Number (*): <form:input path="phoneNum"/>
			<form:errors path="phoneNum" cssClass="error"/>
			
			<br><br>
			Email (*): <form:input path="email"/>
			<form:errors path="email" cssClass="error"/>
			
			<br><br>
			Password (*): <form:input path="passWord" id="pw" type="password"/>
			<form:errors path="passWord" cssClass="error"/>
			
			<input type="checkbox" onclick="toggleShow()">Show Password
			<br><br>
			
			Re-enter Password (*): <form:input path="passWord2" id="pwc" type="password"/>
			<form:errors path="passWord2" cssClass="error"/>
			<br><br>
			
			<input type="submit" value="Submit">
			
		</form:form>
		
		<script>
			function toggleShow() {
			  var first = document.getElementById("pw");
			  var second = document.getElementById("pwc");
			  if (first.type === "password") {
			    first.type = "text";
			    second.type="text";
			  } else {
			    first.type = "password";
			    second.type="password";
			  }
			}
		</script>
	
	</body>
</html>