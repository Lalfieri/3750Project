<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Registration Form</title>
	</head>
	
	<body>
	
		<form:form action="processForm" modelAttribute="student">
		
			First name:<form:input path="firstName"/>
			<br><br>
			Last name:<form:input path="lastName"/>
			<br><br>
			
			Country:
			<form:select path="country">
				<!-- ${student.countryOptions} will call getCountryOptions() -->
				<form:options items="${student.countryOptions}" />
			</form:select>
			
			<br><br>
			Java<form:radiobutton path="favouriteLanguage" value="Java"/>
			C<form:radiobutton path="favouriteLanguage" value="C"/>
			Ruby<form:radiobutton path="favouriteLanguage" value="Ruby"/>
			Perl<form:radiobutton path="favouriteLanguage" value="Perl"/>
			
			<br><br>
			Operating Systems
			Windows<form:checkbox path="operatingSystems" value="Windows"/>
			Linux<form:checkbox path="operatingSystems" value="Linux"/>
			MacOS<form:checkbox path="operatingSystems" value="MacOS"/>
			
			<br><br>
			<input type="submit" value="Submit"/>
		
		</form:form>
	
	</body>

</html>