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
    <a class="navbar-brand">Welcome  ${username}</a>
    <form class="d-flex" action="Logout">
     <input class="btn btn-outline-success" type = "submit" value = "Logout">
    </form>
  </div>
</nav>

<div class="row">
<div class = "col">	
<div class="container-sm">
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="Videos.jsp" class="btn btn-primary">Videos</a>
  </div>
</div>
</div>	
</div>

<div class = "col">	
<div class="container-sm">
<div class="card" style="width: 18rem;">
  
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="Recom.jsp" class="btn btn-primary">Recommendation</a>
  </div>
</div>
</div>
</div>	
</div>	
		
		
		
		
	
		
</body>
</html>