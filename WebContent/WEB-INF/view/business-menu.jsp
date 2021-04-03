<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Business Menu Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
	<body>
	<div class="header">
		<h1>MenU - Business Menu Page</h1>
		<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
		<ul>
		  <li><a href="">Home</a></li>
		  <li><a href="">Contact Us</a></li>
		</ul>
	</div>
	
	<div id="baMenu">
		<!-- menu to navigate business account pages -->
	</div>
	
	<div id="uploadMenuOptions">
		<!-- buttons for upload menu options -->
		<a class="btn myHomeButton" href="menuItem">Enter Items Manually</a>
		<a class="btn myHomeButton">Upload From CSV</a>
	</div>

	</body>

</html>