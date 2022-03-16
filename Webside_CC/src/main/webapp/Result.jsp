<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	
	<div class="container">
		<h2> Your Recommendations!</h2>
		
			<% ArrayList<String> Series = 
	           (ArrayList<String>)request.getAttribute("Series");
			for(String s : Series) {%>
			<ul>
				<li><%=s %></li>
			</ul>
				
			<%}%>
	            
	 </div>

</body>
</html>