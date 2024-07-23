<%@page import="com.servlet.loginservlet"%>
<%@page import="com.entities.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    user us = (user)session.getAttribute("user-ob"); // remove kr diya per agar koi seedha hoem pg run kar or user-ob null hoga to vo seedha
    // login pg pe jayega  kyu ki logout servlet ki help se humne server se vo data delete kr diya h 
    if(us==null){
    	session.setAttribute("login-first", "Please Login first!!");
    	response.sendRedirect("login.jsp");
    	// agar koi login pg k through means login kar k ata h to v ye us null ni hoga or vo wapis login pg me ni jayega
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">


<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #ceffd9">
<!--  navbar start -->

	<nav class="navbar navbar-expand-lg navbar-light bg-custom">
		<a class="navbar-brand fontsi" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active fontsi"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item active fontsi"><a class="nav-link"
					href="login.jsp">Login</a></li>

				<li class="nav-item fontsi "><a class="nav-link"
					href="register.jsp">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!--  navbar end -->
	
	
	<div class="container">
	<div class="row d-flex justify-content-center align-item-center mt-4">
	<div class="col-md-6">
	<div class="card">
	<%
	user use= new user();
	use=(user)session.getAttribute("user-ob"); 
	%>
	
	<%
	if(use!=null)
	{%>
			<div class="card-body">
	<h1>Name:<%=use.getName() %></h1>
	<h1>Email:<%= use.getEmail() %></h1>
	<div class="container text-center">
	<a class="btn btn-primary btn-lg" href="logoutservlet">Logout</a>
	</div> 
	</div>
		
	<%}
	%>

	</div>
	</div>
	</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>