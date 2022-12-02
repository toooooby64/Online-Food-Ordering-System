<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Checkout</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #020C53;" >
        <div class="container-fluid" >
          <a href="MenuController" >
            <img class="logo" src="WebContent/TheSpot.png" alt="A sample SVG button." width="100" height="100" data-fallback="logo.png"  />
        </a>

          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="MenuController">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="AboutUs">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ContactUs">Contact</a>
              </li>
            </ul>
          </div>
             <div class="d-flex">
              <a class="nav-link" href="Cart"><button class="btn btn-success" type="submit" style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53">Cart</button></a>
            </div>
        </div>
 </nav> 


<form class = "row justify-content-center" action = 'CheckoutController' method = 'post'>
	<table class = "table w-50 p-3 " >
		<tr> 
			<td> Name </td> 
			<td>
			
				<c:forEach items = "${order}" var = "orderItems">
					<p>${orderItems.name}</p>
				</c:forEach>
			</td> 
			<td>
				<c:forEach items = "${order}" var = "orderItems">
					<p>${orderItems.price}</p>
				</c:forEach>
			</td> 
		</tr>
		
		<tr> 
			<td> Tax </td> 
			<td>
				
			</td>
			<td>
				<p>${tax}</p>
				
			</td> 
		</tr>
		<tr> 
			<td> Total </td> 
			<td>
				
			</td>
			<td>
				<p>${total}</p>
				
			</td> 
		</tr>
		<tr> 
		
			<td colspan = 2> 
				  <button type="submit" class="btn btn-primary">Checkout</button>
			</td> 
		</tr>
	</table>
</form>	
	
	
	
	
	
	

	
</body>
</html>