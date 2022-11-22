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

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
	  <a class="navbar-brand" href="#">Menu</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="#">Link</a>
	      </li>
	      
	    </ul>
	  </div>
	</div>
</nav>

<div class="container">
	<div class="row">
	
	<c:forEach items="${menuItems}" var="menuItems">
	  
	  <div class="col-4" style="padding: 20px">
	  
	  
			<div class="card" style="width: 18rem;">
			  <img src="${menuItems.image}" class="card-img-top" alt="${menuItems.name}">
			  <div class="card-body">
			    <h5 class="card-title">${menuItems.name}</h5>
			    <p class="card-text"><b>$${menuItems.price}</b><br>${menuItems.description}</p>
			    
			    <form method="post" action="MenuController">
			    <input type="hidden" name="menuName" value="${menuItems.name}">
			    <input type="hidden" name="menuDescription" value="${menuItems.description}">
			    <input type="hidden" name="menuPrice" value="${menuItems.price}">
			  	<button type="submit" class="btn btn-primary">Add to Cart</button>
			    </form>
			    
			  </div>
			</div>	
	    </div>
	</c:forEach>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>