<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Checkout</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
              <li class="nav-item">
                <a class="nav-link" href="LoginPage">Login</a>
              </li>
            </ul>
            <div class="d-flex">
              <a class="nav-link" href="Cart"><button class="btn btn-success" type="submit" style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53">Cart</button></a>
            </div>
          </div>
        </div>
 </nav>


<h1 align = "center">Please review your order before continuing. </h1>
<br>
<br>
<form class = "row justify-content-center" action = 'execute_payment' method = 'post'>
	<table class = "table w-50 p-3 " >
<tr>
            <td colspan="3"><b>Transaction Details:</b></td>
            <td>
                <input type="hidden" name="paymentId" value="${param.paymentId}" />
                <input type="hidden" name="PayerID" value="${param.PayerID}" />
            </td>
        </tr>
        <tr>
            <td colspan = "3">
            	<c:forEach items="${order}" var="order">
					<div class="card mb-3">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<div class="d-flex flex-row align-items-center">
									<div class="ms-3">
										<h5>${order.name}</h5>
										<p class="small mb-0">${order.description}</p>
									</div>
								</div>
								<div class="d-flex flex-row align-items-center">
									<div style="width: 50px;">
										<h5 class="fw-normal mb-0">${order.quantity}</h5>
									</div>
									<div style="width: 80px;">
										<h5 class="mb-0">$${order.price}</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
            </td>
        </tr>
        <tr>
            <td>Subtotal:</td>
            <td></td>
            <td>${transaction.amount.details.subtotal} USD</td>
        </tr>
        <tr>
            <td>Tax:</td>
            <td></td>
            <td>${transaction.amount.details.tax} USD</td>
        </tr>
        <tr>
            <td>Total:</td>
            <td></td>
            <td>${transaction.amount.total} USD</td>
        </tr>
        <tr><td></td><td><br/><td></td></td></tr>
        <tr>
            <td colspan="3"><b>Payer Information:</b></td>
            
        </tr>
        <tr>
            <td>First Name:</td>
            <td></td>
            <td>${payer.firstName}</td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td></td>
            <td>${payer.lastName}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td></td>
            <td>${payer.email}</td>
        </tr>
        <tr><td></td><td></td><td><br/></td></tr>
        <tr>
            <td colspan="3"><b>Billing Address:</b></td>
        </tr>
        <tr>
            <td>Recipient Name:</td>
            <td></td>
            <td>${shippingAddress.recipientName}</td>
        </tr>
        <tr>
            <td>Line 1:</td>
            <td></td>
            <td>${shippingAddress.line1}</td>
        </tr>
        <tr>
            <td>City:</td>
            <td></td>
            <td>${shippingAddress.city}</td>
        </tr>
        <tr>
            <td>State:</td>
            <td></td>
            <td>${shippingAddress.state}</td>
        </tr>
        <tr>
            <td>Country Code:</td>
            <td></td>
            <td>${shippingAddress.countryCode}</td>
        </tr>
        <tr>
            <td>Postal Code:</td>
            <td></td>
            <td>${shippingAddress.postalCode}</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <button style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53" type="submit" class="btn btn-primary">Checkout</button>
            </td>
        </tr>   
	</table>
</form>	
	
	
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	
</body>
</html>