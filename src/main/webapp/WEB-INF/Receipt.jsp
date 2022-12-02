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

<h1 align = "center">Thank you for your order! Here are your order details. </h1>
	<div class="container py-5 h-100">
	<c:forEach items="${order}" var="order">
		<div class="card mb-3">
			<div class="card-body">
				<div class="d-flex justify-content-between">
					<div class="d-flex flex-row align-items-center">
						<div>
							<img src="${order.image}" class="img-fluid rounded-3"
								alt="${order.name}" style="width: 65px; padding: 2px">
						</div>
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
						<form method="post" action="Delete">
							<input type="hidden" name="itemName" value="${order.name}">
							<button type="submit" class="btn btn-link" style="color: black"><i class="bi bi-trash"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<div align = "right">
		<p class="mb-0 text-end fs-4 currency-usd"><h5><b>Subtotal: ${transaction.amount.details.subtotal}</b></h5>
		<p class="mb-0 text-end fs-4 currency-usd"><h5><b>Tax: ${transaction.amount.details.tax}</b></h5>
		<p class="mb-0 text-end fs-4 currency-usd"><h5><b>Total: ${transaction.amount.total}</b></h5>
	</div>
	<h5 class="d-flex align-items-center justify-content-center">Hungry for More?</h5>	
	<form action='MenuController'>
	   		<div class="d-flex align-items-center justify-content-center" >
			<button style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53" type="submit" class="btn btn-primary">Back to Menu</button>
			</div>
		</form>
	</div>

	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous">
	</script>
</body>
</html>