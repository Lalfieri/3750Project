<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Confirm Order</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<style>
		table, th, td {
			padding:2px;
			background-color: white;
			border: 1px solid black;
		  	border-collapse: collapse;
		  	border: 1px solid black;
		  	text-align:left;
		  	font-family: sans-serif;
		}
		.center {
			display: "flex";
			float:"center";
			margin-left: auto;
  			margin-right: auto;
		  	width: 95%;
		  	padding: 20px;
		}
		.title{
			display:inline-block;
			width:80%;
			text-align:right;
			margin: 5%;
  			float:right;
  			vertical-align:center;
		}
		
		.banner{
			border-radius:5px;
			padding:15px;
		  	display: block;
 			align-items: center;
  			justify-content: center;
  			width:95%;
  			background-color: #9b87d8; 
  			margin-left: auto;	
  			margin-right: auto;
  			vertical-align:center
		}
		.cart-popup {
			display: block;
			position: fixed;
			bottom: 0;
			right: 15px;
			border: 3px solid #f1f1f1;
			z-index: 9;
		}
		
		.cart-container {
			max-width: 400px;
			padding: 10px;
			background-color: #9b87d8;
		}
		
	</style>
</head>
<body>

	<div class="header">
		<h1>MenU - Home</h1>
		<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
		<ul>
		  <li><a href="">Home</a></li>
		  <li><a href="">Contact Us</a></li>
		</ul>
	</div>
	
		
	<div class="center">
		<div class="banner">
			<h3>Order Review</h3>
			<table style="width:100%;" >
				<tr>
			    	<th>Item</th>
			   		<th style="width:15%">Price</th>
			 	</tr>
			 	<tr>
			    	<td>Cheese Pizza - 1</td>
			    	<td>10.50</td>
			  	</tr>
			  	<tr>
			    	<td>Extra Sauce - 1</td>
			    	<td>1.50</td>
			  	</tr>
			</table>
			<br>
			<table style="width:100%">
				<tr>
					<th style="width:5%;padding:2px;">Total:</th>
					<td id="cartTotal" style="width:auto;padding:2px;text-align:right;">12.00</td>
				</tr>
			</table>
		</div>
	</div>

	<div style="display:block;">
		<div style="width:95%;float:center">
			<a class="btn myHomeButton" href="/restaurantMenu" style="margin-left:auto;margin-right:1.5%">Edit Order</a>
		</div>
		
		
		<div class ="center">
			<div class="banner" style="display:inline-block;margin-left:2.5%">
				<form:form action="login" modelAttribute="business">
					<label>Name: </label><form:input path="name"/><br>
					<input type="text" id="clientName" name="clientName" style="width:25%">
					<form:errors path="name" cssClass="error"/>
						
					<br><br>
					<label>Phone Number: </label><form:input id="num" path="phoneNum" type="phone"/><br>
					<input type="number" id="clientNumber" name="clientNumber" style="width:25%">
					<form:errors path="phoneNumber" cssClass="error"/>
		
					<div class="button">
						<input type="submit" value="Confirm Order" class="btn myHomeButton" style="float:right;pading:10px">
					</div>
				</form:form>
			</div>
		</div>
	</div>


</body>
</html>