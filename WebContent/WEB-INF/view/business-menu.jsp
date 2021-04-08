<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Business Menu Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
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
	
	<div id="baMenu" class="vertical-menu">
	  <a href="#" >General</a>
	  <a href="#">Account Details</a>
	  <a href="#" class="active">Menu</a>
	  <a href="#">Orders</a>
	</div>
	
	<div id="businessMenu" class="businessMenu">
		<table class="table">
			<tr>
				<th> Item Name </th>
				<th> Category </th>
				<th> Description </th>
				<th> Price </th>
			</tr>
			<tr>
				<td> Burger </td>
				<td> Entree </td>
				<td> Beef patty with lettuce, tomato, and pickles </td>
				<td> $5.99 </td>
			</tr>
			<tr>
				<td> Cheeseburger </td>
				<td> Entree </td>
				<td> Beef patty with cheese, lettuce, tomato, and pickles </td>
				<td> $6.24 </td>
			</tr>
			<tr>
				<td> Veggie Burger </td>
				<td> Entree </td>
				<td> Plant based patty with lettuce, tomato, and pickles. Add cheese for 25¢ </td>
				<td> $5.99 </td>
			</tr>
			<tr>
				<td> Fries </td>
				<td> Side </td>
				<td> Potato fries </td>
				<td> $3.50 </td>
			</tr>
			<tr>
				<td> Milkshake </td>
				<td> Drink </td>
				<td> it bring all the boys to the yard </td>
				<td> $4.25 </td>
			</tr>
			<tr>
				<td> Pop </td>
				<td> Drink </td>
				<td> Your choice of coke, 7up, root beer, or fruitopia </td>
				<td> $2.25 </td>
			</tr>
		</table>
	
	</div>
	
	<div id="uploadMenuOptions">
		<!-- buttons for upload menu options -->
		<a class="btn myMenuButton" href="menuItem">Add Items</a>
		<a class="btn myMenuButton">Upload From File</a>
	</div>

	</body>

</html>