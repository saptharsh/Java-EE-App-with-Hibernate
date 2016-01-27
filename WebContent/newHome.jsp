<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="org.app.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="org.app.model.User"%>
<%
	User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/customHome.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>

</head>

<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img alt="Brand"
					src="images/java_logo.jpg"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>

				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">

		<div class="row">
			<div class="col-md-4">
				<div class="leftTop-block">
					<div class="cart-block">
						<b>Status</b>
					</div>
					<div class="status-block">
						<!-- Getting User attributes from the SESSION -->
						<b style="padding: 10px;"> Welcome <%=user.getFirstName() + " " + user.getLastName()%></b>
						<a href="LogoutServlet">Logout</a>
					</div>

				</div>

				<!-- End of Cart-Block -->

				<div class="panel panel-default panel-list">
					<div class="panel-heading panel-heading-dark">
						<h3 class="panel-title">Categories</h3>
					</div>
					<!-- List group -->
					<ul class="list-group">
						<li class="list-group-item"><a href="#">Other Console
								Games</a></li>
					</ul>
				</div>

				<div class="panel panel-default panel-list">
					<div class="panel-heading">
						<h3 class="panel-title">Most Popular</h3>
					</div>
					<!-- List group -->
					<ul class="list-group">
						<li class="list-group-item"><a href="#">Gaming Consoles</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading panel-heading-green">
						<h3 class="panel-title">MVC Java Blog with Hibernate and
							Servlets</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<!-- 12 Grids -->

							<div class="main-content">
								<%=new Date()%><br />

							</div>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>User ID</th>
										<th>First Name</th>
										<th>Middle Name</th>
										<th>Last Name</th>
										<th>email</th>
									</tr>
								</thead>
								<tbody>
									<%
										LoginService loginService = new LoginService();
										List<User> list = loginService.getListOfUsers();
										for (User u : list) {
									%>
									<tr>
										<td><%=u.getUserId()%></td>
										<td><%=u.getFirstName()%></td>
										<td><%=u.getMiddleName()%></td>
										<td><%=u.getLastName()%></td>
										<td><%=u.getEmail()%></td>
									</tr>
									<%
										}
									%>
								
								<tbody>
							</table>
						</div>
						<!-- /.row -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<div class="footer">
		<div class="container-footer">
			<p>The Java Forum &copy; 2015, All Rights Reserved</p>
		</div>
	</div>


</body>
</html>
