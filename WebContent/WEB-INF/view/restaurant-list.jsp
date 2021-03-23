<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Restaurants</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
<body>
	<div class="header">
		<h1>MenU - Restaurants</h1>
		<img src="${pageContext.request.contextPath}/resources/images/Logo_1Colour.jpg"/>
		<ul>
		  <li><a href="">Home</a></li>
		  <li><a href="">Contact Us</a></li>
		</ul>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/azizzpuh.jpg" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">Azizzpuuh</h5>
			        <p class="card-text">American, Pizza</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/yarb.png" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">yArb</h5>
			        <p class="card-text">American, Sandwiches</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/mercedes.png" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">Mercedes</h5>
			        <p class="card-text">American, Burgers</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/sbheduba.png" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">Sbeduba</h5>
			        <p class="card-text">Coffee, Bakery</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/sbubby.jpg" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">Sbubby</h5>
			        <p class="card-text">Sandwiches, Salads</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/applebapple.jpg" alt="Card image cap">
				<div class="card-body">
			        <h5 class="card-title">Mercedes</h5>
			        <p class="card-text">American, Burgers</p>
			        <a href="#" class="btn btn-primary">Order now</a>
				</div>
			</div>
		</div>
	</div>
		
		
	
</body>
</html>