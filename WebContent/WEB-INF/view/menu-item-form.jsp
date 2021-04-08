<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Business Menu Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/menu.css">
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
	
	<form id="menuItemForm" class="menuForm">
		<br>
		<label id="itemNameLbl">Item Name: </label>
		<input type="text" id="itemNameIn"> <br><br>
		<label id="itemNameLbl">Category: </label>
		<input type="text" id="categoryIn"> <br><br>
		<label id="itemDescLbl">Item Description: </label>
		<input type="text" id="itemDescIn"> <br><br>
		<label id="itemPriceLbl">Item Price: </label>
		<input type="text" id="itemPriceIn"> <br><br>
	</form>
	
	<div id="menuItemButtons" class="btn-group"> <br>
		<input type="button" id="saveAndNew" class="menuItemFormBtn" value="Save and New Item">
		<input type="button" id="saveAndFinish" class="menuItemFormBtn" value="Save and Finish" href="business/showBusinessMenu">
		<input type="button" id="Cancel" class="menuItemFormBtn" value="Cancel">
	</div>

</body>
</html>