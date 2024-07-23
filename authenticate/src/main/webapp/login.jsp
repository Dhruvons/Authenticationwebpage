<%@page import="com.db.dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
				<li class="nav-item fontsi"><a class="nav-link"
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
		<div class="mx-auto mt-5">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header text-center c-head text-white">
							<svg xmlns="http://www.w3.org/2000/svg" width="50" height="40"
								fill="currentColor" class="bi bi-person-circle"
								viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
  <path fill-rule="evenodd"
									d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
</svg>

							<h5 class="text-center mt-2" style="font-size: 35px">Login
								Pages</h5>
						</div>
						
						
						<%
						
						String loginfirst= (String)session.getAttribute("login-first");
						if(loginfirst!= null){
					
						%>
						<div class="alert alert-success" role="alert"><%= loginfirst %> </div>
							<%
							session.removeAttribute("login-first");
						}
							
							%>
						
						
							<%
						
						String logoutsucc= (String)session.getAttribute("logout-succ");
						if(logoutsucc!= null){
					
						%>
						<div class="alert alert-success" role="alert"><%= logoutsucc %>  </div>
							<%i
							session.removeAttribute("logout-succ");// to restore session , 1 session reload k bad khatam hojaata h 
						}
							
							%>
							
							<!-- eror msg start -->
														<%
						
						String errormsg= (String)session.getAttribute("error-msg");
						if(errormsg!= null){
					
						%>
						<div class="alert alert-danger" role="alert"><%= errormsg %>  </div>
							<%
							session.removeAttribute("error-msg");// to restore session , 1 session reload k bad khatam hojaata h 
						}
							
							%>
						
						
						<div class="card-body">
						
							<form action="loginservlet" method="post">


								<div class="form-group">
									<label for="exampleInputEmail1">Enter Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="email">

								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">Enter Password</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" name="password">
								</div>

								<button type="submit"
									class="btn btn-primary btn-block badge-pill">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>








	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>









	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
</body>
</html>