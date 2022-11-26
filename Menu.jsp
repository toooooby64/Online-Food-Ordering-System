<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Menu</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-info" href="MenuController">Skip Line</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="MenuController">Menu</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
      <div class="d-flex">
        <a class="nav-link" href="Cart"><button class="btn btn-success" type="submit">Cart</button></a>
      </div>
    </div>
  </div>
</nav>

<div class="container">
	<div class="row">
	
	<c:forEach items="${menuItems}" var="menuItems">
	  
	  <div class="col-lg-4 col-md-6 col-sm-12" style="padding: 20px">
	  
	  
			<div class="card h-100" style="width: 19rem;">
			  <img src="${menuItems.image}" class="card-img-top" alt="${menuItems.name}" width="500" height="300">
			  <div class="card-body">
			    <h3 class="card-title">${menuItems.name}</h3>
			    <p class="card-text"><b>$${menuItems.price}</b><br>${menuItems.description}</p>
			    </div>
			    
			    <form method="post" action="MenuController">
			    <input type="hidden" name="menuImage" value="${menuItems.image}">
			    <input type="hidden" name="menuName" value="${menuItems.name}">
			    <input type="hidden" name="menuDescription" value="${menuItems.description}">
			    <input type="hidden" name="menuPrice" value="${menuItems.price}">
			    <div class="d-grid gap-2 col-6 mx-auto">
			  		<button type="submit" class="btn btn-primary">Add to Cart</button>
			  	</div>
			    </form>
			    
			</div>	
	    </div>
	</c:forEach>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
