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
<section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">Sign in</h3>

	<form action="Login" method = "post">
	<div class="form-outline mb-4">
              <input type="text"  class="form-control form-control-lg"  name = "uname"/>
              <label class="form-label" >Email</label>
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" class="form-control form-control-lg" name = "password"/>
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>
		
		<input  class="btn btn-primary btn-lg btn-block"  type ="submit" value = "login">
	</form>
	
	
            

           
          

            <hr class="my-4">

           
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>