<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>New Student</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="IndexController">Home</a></li>
    <li class="breadcrumb-item"><a href="StudentController">Students</a></li>
    <li class="breadcrumb-item active" aria-current="page">New Student</li>
  </ol>
</nav>


<form action = 'CheckoutController' method = 'post'>
	<table class = "table w-50 p-3" >
		<tr> 
			<td> Name </td> 
			<td>
				
			</td> 
		</tr>
		
		<tr> 
			<td> Age </td> 
			<td>
				<input type="text" class="form-control"  name = 'age'>
			</td> 
		</tr>
		<tr> 
			<td> Parent Name </td> 
			<td>
			    <input type="text" class="form-control"  name = 'parent name'>
			</td> 
		</tr>
		<tr> 
			<td> Parent Email </td> 
			<td> 
				<input type="email" class="form-control"  placeholder="name@example.com" name = 'parent email'> 
			</td> 
		</tr>
		<tr> 
		
			<td colspan = 2> 
				  <button type="submit" class="btn btn-primary">Submit</button>
			</td> 
		</tr>
	</table>
</form>	
	
	
	
	
	
	

	
</body>
</html>