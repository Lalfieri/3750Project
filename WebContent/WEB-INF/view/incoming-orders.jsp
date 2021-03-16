<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Incoming Orders</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/orders.css">
</head>
<body>

	<div class="header">
		<h1>MenU - Incoming Orders</h1>
		<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>

	</div>
	
	<div class="navBar">
		<ul>
			<li><a href="">Home</a></li>
			<li><a href="">Contact Us</a></li>
		</ul>
	</div>
	
	<div class="container">
	
		<div class="ordersBox">
		
			<div class="orderTitle">
				<p>Order Number</p>
			</div>
			
			<div class="content">
				<a href="">Order #301127483</a><br>
				<a href="">Order #301247392</a><br>
				<a href="">Order #308311587</a><br>
			</div>
			
		</div>
	
		
		<div class="accDecBox">
			<div class="title">
				<p>Accept or Decline Order</p>
			</div>
			
			<div class="content">
				<button class="button accept">Accept</button>
				<button class="button decline">Decline</button>
			</div>
		</div>
		
		
		
		<div class="userInfoBox">
			<div class="title">
				<p>Customer Information</p>
			</div>
			
			<div class="content">
				<p class="userInfo">
					Customer Name: 	&emsp; &emsp;&emsp; &emsp;		 						John Doe<br>
					Customer Id: 	&emsp; &emsp;&emsp; &emsp;&emsp; &nbsp;					00226513<br>
					Phone Number: 	&emsp; &emsp;&emsp; &emsp;&ensp; 						226-345-9721<br>
					E-mail: 		&emsp; &emsp;&emsp; &emsp;&emsp; &emsp; &emsp; &nbsp;	johndoe@gmail.com<br>
					Order Number:	&emsp; &emsp;&emsp; &emsp;&ensp; 						301127483<br>
					Requested Pick Up Time:  &ensp; &nbsp;									14/05/2021<br>
				</p>
			</div>
		</div>
		
		
		<div class="contBox">
			<div class="title">
				<p>Customer Order</p>
			</div>
			
			<div class="content">
				<p class="userInfo">
					Apples			<br>
					Bananas			<br>
					Strawberries			<br>
					Avocados			<br>
					Bell Peppers			<br>
					Carrots			<br>
					Garlic			<br>
					Limes			<br>
					Onion			<br>
					Parsley			<br>
					Cilantro			<br>
					Basil			<br>
					Potatoes			<br>
					Spinach			<br>
					Tomatoes			<br>
					Pasta			<br>
					Rice			<br>
					Wheat Bread			<br>
					Tortillas			<br>
					Chicken			<br>
					Eggs			<br>
					Ground Beef			<br>
					Butter			<br>
					Shredded Cheese			<br>
					Milk			<br>
					Sour Cream			<br>
					Yogurt			<br>
				</p>
			</div>
		</div>
		
		

	</div>
</body>
</html>