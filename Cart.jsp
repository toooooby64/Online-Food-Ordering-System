<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<title>View Cart</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand text-info" href="MenuController">Skip Line</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						 href="MenuController">Menu</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
				<div class="d-flex">
					<a class="nav-link" href="#"><button class="btn btn-success"
							type="submit">Cart</button></a>
				</div>
			</div>
		</div>
	</nav>
	<div class="container py-5 h-100">
		<div class="d-flex align-items-center justify-content-center" >
			<c:if test="${size < 1}">
				<p>Your cart is currently empty</p>
			</c:if>
			<c:if test="${size >= 1}">
				<div class="d-flex justify-content-between align-items-center mb-4" >
					<div>
						<p class="mb-1" style="text-align:center">Shopping cart</p>
						<p class="mb-0">You have ${size} items in your cart</p>
					</div>
				</div>
			</c:if>
		</div>
		<c:if test="${size >= 1}">
				<p class="mb-0 text-end"><span style="padding-right:35px">QTY</span><span style="padding-right:95px">Price</span></p>
		</c:if>
	<c:forEach items="${order}" var="order">
		<div class="card mb-3">
			<div class="card-body">
				<div class="d-flex justify-content-between">
					<div class="d-flex flex-row align-items-center">
						<div>
							<img src="${order.image}" class="img-fluid rounded-3"
								alt="${order.name}" style="width: 65px;">
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
	<c:if test="${size >= 1}">
		<p class="mb-0 text-end fs-4 currency-usd"><b>Total: ${totalInUSD}</b></p>
		<p class="mb-0 text-end fs-6 text-muted">*Taxes will be calculated at checkout</p>
		<form method="get" action="Checkout">
			<input type="hidden" name="total" value="${total}">
	   		<div class="d-flex align-items-center justify-content-center" >
			<button type="submit" class="btn btn-primary">Checkout</button>
			</div>
		</form>
	</c:if>
	</div>

	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous">
	</script>
</body>
</html>
