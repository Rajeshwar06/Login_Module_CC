<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
	<%
		
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("progma","no-cache");
		response.setHeader("expires","0");
			if(session.getAttribute("username") == null){
				response.sendRedirect("login.jsp");
			}
		%>
		
		<nav class="navbar navbar-dark bg-primary">
	
  <div class="container-fluid">
    <a class="navbar-brand">Series Recommendation System</a>
    <a >Welcome  ${username}</a>
    
  </div>
</nav>
<br>
<div class="container-sm">
<form action="Recom" method = "post">
<select class="form-select"aria-label=".form-select-lg example" name = "item" >
  <option selected>Open this select menu</option>
  <option value="1">Comedy</option>
  <option value="Horror">Horror</option>
  <option value="3">Three</option>
</select>
	<input  class="btn btn-primary btn-lg btn-block"  type ="submit" value = "Submit">

</form>
</div>
</body>
</html>