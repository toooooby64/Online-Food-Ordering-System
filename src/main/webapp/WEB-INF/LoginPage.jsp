<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Login Page</title>
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


<div class="section-1-container section-container">
    <div class="container">
        <div class="row form-outline mb-4">
            <div class="col-10 offset-1 col-lg-8 offset-lg-2 div-wrapper d-flex justify-content-center align-items-center">
            	<h1>Login</h1>
                <div class="divider-1"><span></span></div>
            </div>
        </div>
        <div class="row">
            <div class="col-10 offset-1 col-lg-8 offset-lg-2 div-wrapper d-flex justify-content-center align-items-center">
                <div class="div-to-align">
                    <div style="align: center">
                    
                    	<form action="Login" method="post">
  							<!-- Email input -->
  							<div class="form-outline mb-4">
   								<input type="email" name="email" class="form-control" required/>
   								<label class="form-label" for="emailAddress">Email Address</label>
 							</div>

  							<!-- Password input -->
  							<div class="form-outline mb-4">
    							<input type="password" name="pass" class="form-control" required/>
    							<label class="form-label" for="password">Password</label>
  							</div>

  							<!-- 2 column grid layout for inline styling -->
  							<div class="row mb-12">
   								<div class="col d-flex justify-content-center">
      								<!-- Checkbox -->
     								 <div class="form-check">
        									<input class="form-check-input" type="checkbox" value="" id="remember" checked />
        									<label class="form-check-label" for="rememberMe"> Remember me </label>
     						 				<!-- Simple link -->
      										<a href="#!">Forgot password?</a>
      								</div>
    							</div>
  							</div>

  							<!-- Submit button -->
	   						<div class="d-flex align-items-center justify-content-center" >
								<button style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53" type="submit" class="btn btn-primary">Login</button>
							</div>
  							<!-- Register buttons -->
  							<div class="text-center">
   								<p>Don't have an account? <a href="CreateAccount">Create Account</a></p>
  							</div>
    					</form>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>

	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>