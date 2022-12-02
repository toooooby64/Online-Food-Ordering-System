<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- <link rel = 'stylesheet' type = "text/css" href = "style.cc"> -->


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
          </div>
            <div class="d-flex">
              <a class="nav-link" href="Cart"><button class="btn btn-success" type="submit" style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53">Cart</button></a>
            </div>
        </div>
 </nav> 

      <!-- have this to space the navbar and contact us -->
      <br>
      <br>
      
    

        
<!-- Scuffed way to center the contact us  -->
<div class = "container" >


        <div class = "row" >
            <div class = "col-md-8 mx-auto" style="min-height:175px">
                <p style ="font-size:40px" class = "text-center"><b>CONTACT US</p></b>

                <p>Questions? Send us a messages and we will get back to you as soon as possible within a couple hours!</p>
            </div>

    </div>


<div class = "container">
    
    <div class = "row"  >
        <div class = "col-sm "style="min-height:200px">
            
            <div class = "icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
              </svg></div>
            <div class = "text"></div>
            <h3><b> ADDRESS</b></h3>

            <a href="https://www.google.com/maps/place/Tacos+Los+3+Reyes/@37.3660345,-121.900987,17z/data=!4m13!1m7!3m6!1s0x808fcc7aae21f493:0x1eb55626a6cf59a4!2s1212+Old+Oakland+Rd,+San+Jose,+CA+95112!3b1!8m2!3d37.3672411!4d-121.8908804!3m4!1s0x808fcb8bd177094f:0x9b903880a9bbe240!8m2!3d37.3686354!4d-121.9048299">1212 Oakland Rd<br>San Jose, California(CA), 95112</a>
            <p>Come and join us at our restaurant</p>
        </div>
        <div class = "col-sm" style="min-height:200px">
            <div class = "icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
              </svg></i></div>
            <div class = "text"></div>
            <h3><b> EMAIL</h3></b>
            <a href="mailto:cramirez0337@gmail.com">theSpot@gmail.com</a>
            <p>Speak to Customer service</p>
        </div>
        <div class = "col-sm" style="min-height:200px">
            <div class = "icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
              </svg></div>
            <div class = "text"></div>
            <h3><b> PHONE</h3></b>
            <a href="tel:323-392-7375">(555) 436-1193</a>
            <p>Call and Order</p>
        </div>
    </div>

<br>
<br>

    <div class ="contactForm">
        <form action="https://formspree.io/f/mgeqbvbo"
  method="POST">
        
            <h2 class="text-center"> Get In Touch!</h2>
            <section class="page-section" id="contact">
              <div class="container px-4 px-lg-5">
                <br>
                  </div>
                  <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                      <div class="col-lg-6">

                          <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                              <!-- Name input-->
                              <div class="form-floating mb-3">
                                <label for="name">Full name</label>

                                  <input class="form-control" id="name" name="Name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                  
                                  <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                              </div>
                              <!-- Email address input-->
                              <div class="form-floating mb-3">
                                <label for="email">Email address</label>
                                  <input class="form-control" id="email" name="Email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                  
                                  <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                  <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                              </div>
                              <!-- Phone number input-->
                              <div class="form-floating mb-3">
                                <label for="phone">Continent</label>
                                <select name = "Continent"  class="form-control" id="Continent" name="Continent" data-sb-validations="required"id="continent">
                                  <option>North America</option>
                                  <option>South America</option>
                                  <option>Asia</option>
                                  <option>Australia</option>
                                  <option>Europe</option>
                                  <option>Africa</option>
                                  <option>Antartica</option>
                                </select>
                                 
                                  
                                  <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                              </div>
                              <!-- Message input-->
                              <div class="form-floating mb-3">
                                <label for="message">Message</label>
                                  <textarea class="form-control" id="message" name="Message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                  
                                  <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                              </div>

                              <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                              <!-- Submit Button-->
                              <div class="d-grid"><button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit" style = "border-color: #ffca3d; background-color: #ffca3d; color: #020c53">Send</button></div>
                          </form>
                      </div>
                  </div>

              </div>
          </section>


</form>



        </form>
    </div>
</div>

</div>
<br>

        <footer class="bg-light text-center text-lg-start  ">
          <div class="container p-2">
            <div class="row">
              <div class="col-lg-4 col-md-7 mb-5 mb-md-0">
                <h5 class="text-uppercase">Follow on Socials</h5>
                <div class="container d-flex align-items-center justify-content-center">
                  <a href="https://twitter.com/home" >
                   <svg xmlns="http://www.w3.org/2000/svg" width="50" height="25" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
  					<path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
					</svg>
                </a>
                  <a href="https://www.facebook.com/" >
				<svg xmlns="http://www.w3.org/2000/svg" width="50" height="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
 		 <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
			</svg>
                </a>
                
                <a href="https://www.instagram.com/" >
				<svg xmlns="http://www.w3.org/2000/svg" width="50" height="25" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
 				 <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
				</svg>
              </a>
                  </div>
              </div>
              <div class="col-lg-4 col-md-7 mb-5 mb-md-0">
                <h5 class="text-uppercase">Menu</h5>
                <div class="container d-flex align-items-center justify-content-center">
                   <a href="MenuController" >
					<svg xmlns="http://www.w3.org/2000/svg" width="50" height="25" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
 					 <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z"/>
					</svg>
                </a>
                </div>
      
              </div>
              <div class="col-lg-4 col-md-7 mb-5 mb-md-0">
                <h5 class="text-uppercase">Sign Up</h5>
                
                   <div class="container d-flex align-items-center justify-content-center">
                   <a href="LoginPage" >
					<svg xmlns="http://www.w3.org/2000/svg" width="50" height="25" fill="currentColor" class="bi bi-emoji-sunglasses" viewBox="0 0 16 16">
 					 <path d="M4.968 9.75a.5.5 0 1 0-.866.5A4.498 4.498 0 0 0 8 12.5a4.5 4.5 0 0 0 3.898-2.25.5.5 0 1 0-.866-.5A3.498 3.498 0 0 1 8 11.5a3.498 3.498 0 0 1-3.032-1.75zM7 5.116V5a1 1 0 0 0-1-1H3.28a1 1 0 0 0-.97 1.243l.311 1.242A2 2 0 0 0 4.561 8H5a2 2 0 0 0 1.994-1.839A2.99 2.99 0 0 1 8 6c.393 0 .74.064 1.006.161A2 2 0 0 0 11 8h.438a2 2 0 0 0 1.94-1.515l.311-1.242A1 1 0 0 0 12.72 4H10a1 1 0 0 0-1 1v.116A4.22 4.22 0 0 0 8 5c-.35 0-.69.04-1 .116z"/>
  					<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-1 0A7 7 0 1 0 1 8a7 7 0 0 0 14 0z"/>
					</svg>
                </a>
                </div>
              </div>
              

            </div>
          </div>
        </div>
        </footer>

</body>
</html>
