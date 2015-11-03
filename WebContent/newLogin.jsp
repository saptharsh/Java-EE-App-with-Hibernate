<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Signin</title>


<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/carousel.css" rel="stylesheet">

<!-- Custom style -->
<link href="css/custom.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">
</head>

<body>

	<div class="container">

		<form class="form-signin" id="form" name="form" method="post"
			action="LoginServlet">
			<h2 class="form-signin-heading">Please sign in</h2>
			<p>
				New User? <a href="register.jsp">Register</a>
			</p>
			<label for="inputEmail" class="sr-only">User ID</label> 
			<input type="text" name="userId" id="userId" class="form-control"
				placeholder="Enter your user ID" required autofocus> 
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" name="password" id="password" class="form-control"
				placeholder="Password Min. 6 chars" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>

	</div>
	<!-- /container -->

</body>
</html>
