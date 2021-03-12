<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Customer Registration Page</title>
		
		<style>
			.error {color:red}
		</style>
	</head>
	
	<body>
		Welcome to MenU! Let's get started.<br><br>
		<form:form action="processForm" modelAttribute="customer">
			
			First Name: <form:input path = "firstName" />
			<br><br>
			Last Name (*): <form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"/>
			
			<br><br>
			Free Passes: <form:input path="freePasses"/>
			<form:errors path="freePasses" cssClass="error"/>
			
			<br><br>
			Postal Code: <form:input path="postalCode"/>
			<form:errors path="postalCode" cssClass="error"/>
			
			<br><br>
			Course Code: <form:input path="courseCode"/>
			<form:errors path="courseCode" cssClass="error"/>
			
			<br><br>
	        Choose a city: <form:select path="City">  
		        <form:option value="Guelph" label="Guelph"/>  
		        <form:option value="Barry" label="Barry"/>  
		        <form:option value="Windsor" label="Windsor"/>  
		        <form:option value="Hamilton" label="Hamilton"/>  
        	</form:select>  
			
			<input type="submit" value="Submit">
			
		</form:form>
	
	</body>
</html>