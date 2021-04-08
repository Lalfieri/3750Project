<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Restaurant Menu</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<style>
		table, th, td {
			background-color: white;
			border: 1px solid black;
		  	border-collapse: collapse;
		  	border: 1px solid black;
		  	text-align:left;
		  	font-family: sans-serif;
		}
		
		input {
			float:left;
		}
		.center {
			display: "flex";
			float:"center";
			margin-left: auto;
  			margin-right: auto;
		  	width: 80%;
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
		  	display: flex;
 			align-items: center;
  			justify-content: center;
  			width:95%;
  			background-color: #564A78; 
  			margin-left: auto;	
  			margin-right: auto;
  			vertical-align:center
		}
		.cart-popup {
			visibility:hidden;
			display: block;
			position: fixed;
			bottom: 0;
			right: 15px;
			border: 3px solid #f1f1f1;
			z-index: 9;
		}
		
		.cart-holder{
			visibility:visible;
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
	
	
	<div class="banner">
		<div style="width:25%;height:auto;display:inline-block">
			<img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/azizzpuh.jpg" alt="Card image cap";style="float:center;">
		</div>
		<div class="title">
			<h1 style="font-size:100px">Azziz Puuh</h1>
		</div>

	</div>
	
	<div class="center">
		<table style="width:100%;" >
			<tr>
		    	<th style="width:15%"> </th>
		    	<th style="width:10%"> Amount to Add</th>
		    	<th>Item</th>
		   		<th style="width:15%">Price</th>
		 	</tr>
		 	<tr>
		    	<td><a class="btn myHomeButton" id="cheesePizButton" onclick="addToTable(1)">AddItem</a></td>
		    	<td id="amntToAdd1"><input type="number" id="quantity1" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Cheese Pizza</td>
		    	<td>10.50</td>
		  	</tr>
		  	<tr>
		    	<td><a class="btn myHomeButton" id="pepperoniPizButton" onclick="addToTable(2)">AddItem</a></td>
		    	<td id="amntToAdd2"><input type="number" id="quantity2" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Pepperoni Pizza</td>
		    	<td>12.50</td>
		  	</tr>
		 	<tr>
		    	<td><a class="btn myHomeButton" id="MeatPizButton" onclick="addToTable(3)">AddItem</a></td>
		    	<td id="amntToAdd3"><input type="number" id="quantity3" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Meat Feast Pizza</td>
		    	<td>15.50</td>
		  	</tr>
		  	<tr>
		    	<td><a class="btn myHomeButton" id="margheritaButton" onclick="addToTable(4)">AddItem</a></td>
		    	<td id="amntToAdd4"><input type="number" id="quantity4" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Margherita Pizza</td>
		    	<td>14.50</td>
		  	</tr>
		 	<tr>
		    	<td><a class="btn myHomeButton" id="konkButton" onclick="addToTable(5)">AddItem</a></td>
		    	<td id="amntToAdd5"><input type="number" id="quantity5" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Konk a Cola</td>
		    	<td>2.50</td>
		  	</tr>
		  	<tr>
		    	<td><a class="btn myHomeButton" id="sauceButton" onclick="addToTable(6)">AddItem</a></td>
		    	<td id="amntToAdd6"><input type="number" id="quantity6" name="quantity" min="1" max="100" value="1"></td>
		    	<td>Extra Sauce</td>
		    	<td>1.50</td>
		  	</tr>
		</table>
	</div>

	<div class="center">
		<div style="display:inline-block;margin-left:auto; margin-right:5%">
			<a class="btn myHomeButton" href="menu/confirmation" style="float:right">Confirm Order</a>
		</div>
	</div>


	<div class="cart-popup" id="cartId">
		<div class="cart-container">
		    <div style="display:inline:block;">  		
		    	<button type="button" class="btn cancel" style="float:right" id="cartCloseButton" onclick="closeCart()">_</button>
		    	<h3>Shopping Cart</h3>
		    </div>
		    
			<table id="cartTable" style="width:100%">
				<tr>
					<td>Item</td>
					<td>Amount</td>
					<td></td>
				</tr>
				<tr id="row1" style="display:none">
					<td> Cheese Pizza </td>
					<td id="ammnt1">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add1" onclick="addItemInCart(1)">add</button>
							<button class="btn-primary" id="rem1" onclick="remvItemInCart(1)">remove</button>
						</div>
					</td>
				</tr>
				<tr id="row2" style="display:none">
					<td> Pepperoni Pizza </td>
					<td id="ammnt2">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add2" onclick="addItemInCart(2)">add</button>
							<button class="btn-primary" id="rem2" onclick="remvItemInCart(2)">remove</button>
						</div>
					</td>
				</tr>
				<tr id="row3" style="display:none">
					<td> Meat Feast Pizza </td>
					<td id="ammnt3">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add3" onclick="addItemInCart(3)">add</button>
							<button class="btn-primary" id="rem3" onclick="remvItemInCart(3)">remove</button>
						</div>
					</td>
				</tr>
				<tr id="row4" style="display:none">
					<td> Margherita Pizza </td>
					<td id="ammnt4">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add4" onclick="addItemInCart(4)">add</button>
							<button class="btn-primary" id="rem4" onclick="remvItemInCart(4)">remove</button>
						</div>
					</td>
				</tr>
				<tr id="row5" style="display:none">
					<td> Konk a Cola </td>
					<td id="ammnt5">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add5" onclick="addItemInCart(5)">add</button>
							<button class="btn-primary" id="rem5" onclick="remvItemInCart(5)">remove</button>
						</div>
					</td>
				</tr>				
				<tr id="row6" style="display:none">
			    	<td>Extra Sauce</td>
					<td id="ammnt6">  0  </td>
					<td style="width:35%"> 
						<div style="display:inline-block;">
							<button class="btn-primary" id="add6" onclick="addItemInCart(6)">add</button>
							<button class="btn-primary" id="rem6" onclick="remvItemInCart(6)">remove</button>
						</div>
					</td>
				</tr>
			</table>  
		</div>
		
		<div class="cart-holder" id="cartHolder">
			<div class="cart-container">
				<div style="display:inline:block;">
		   		<button type="button" class="btn cancel" style="float:right" id="cartOpenButton" onclick="openCart()">+</button>
		   		<h4 >Shopping Cart</h4>
		    	</div>
			</div>
		</div>
		
	</div>


	<script>
		function closeCart() {
			holder = document.getElementById("cartHolder");
			cart = document.getElementById("cartId");
			
			cart.style.visibility="hidden";
			holder.style.visibility="visible";	
		}
		
		function openCart() {
			holder = document.getElementById("cartHolder");
			cart = document.getElementById("cartId");
			
			cart.style.visibility="visible";
			holder.style.visibility="hidden";	
		}
		
		function addItemInCart(itemId) {
			//console.log("Adding");
			
			let toGet = "ammnt" + itemId;
			let amount = document.getElementById(toGet);
			
			let rowToGet = "row" + itemId;
			let tableRow = document.getElementById(rowToGet);
			
			//console.log(parseInt(amount.innerHTML) +1);
			
			if(parseInt(amount.innerHTML)==0){
				tableRow.style.display = "";
			}
			
			amount.innerHTML = parseInt(amount.innerHTML) + 1;
		}
		
		function remvItemInCart(itemId) {
			//console.log("Removing");
			let toGet = "ammnt" + itemId;
			let amount = document.getElementById(toGet);

			let rowToGet = "row" + itemId;
			let tableRow = document.getElementById(rowToGet);			
			
			if(parseInt(amount.innerHTML)==1){
				tableRow.style.display = "none";				
			}
			
			amount.innerHTML = parseInt(amount.innerHTML) - 1;
		}
		
		function addToTable(itemId){
			console.log("addingFromMenuToCart");
			let toGet = "ammnt" + itemId;
			let amount = document.getElementById(toGet);
			
			let amountToAdd = document.getElementById("quantity" + itemId);

			let rowToGet = "row" + itemId;
			let tableRow = document.getElementById(rowToGet);		
			
			tableRow.style.display = ""
			
			amount.innerHTML = parseInt(amount.innerHTML) + parseInt(amountToAdd.value);
			
			openCart();
		}
	</script>
	

</body>
</html>