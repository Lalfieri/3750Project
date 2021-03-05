<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Confirmation</title>
		</head>
	<body>
		<h5>The student is confirmed: ${student.firstName} ${student.lastName}</h5>
		<br>
		<h5>Country: ${student.country}</h5>
		<br>
		<h5>Favourite Language: ${student.favouriteLanguage}</h5>
		<br>
		<h5>Operating Systems:</h5>
		<ul>
			<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
			</c:forEach>
		</ul>
		
	</body>
</html>