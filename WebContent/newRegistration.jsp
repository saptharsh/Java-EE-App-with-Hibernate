<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MVC with Hib & JSP</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/carousel.css" rel="stylesheet">

<!-- Custom style -->
<link href="css/custom.css" rel="stylesheet">

</head>


<body>

	<div class="container">
		
			<form class="form-reg" id="form" name="form" method="post" action="RegisterServlet">

				<h1>Registration</h1>
				<p>Please enter the following information</p>

				<div class="form-group">

					<label>First Name</label> <input type="text" class="form-control"
						name="firstName" id="firstName"
						placeholder="Enter your first name" required>
				</div>

				<div class="form-group">
					<label>Middle Name </label> <input type="text" class="form-control"
						name="middleName" id="middleName"
						placeholder="Enter your middle name" />
				</div>

				<div class="form-group">
					<label>Last Name </label> <input type="text" class="form-control"
						name="lastName" id="lastName" placeholder="Enter your last name" required>
				</div>

				<div class="form-group">
					<label>Email</label> <input type="email" class="form-control"
						name="email" id="email" placeholder="Ex: eric20@gmail.com" required>
				</div>

				<div class="form-group">
					<label>User ID </label> <input type="text" class="form-control"
						name="userId" id="userId" placeholder="Enter your user ID" required>
				</div>

				<div class="form-group">
					<label>Password </label> <input type="password"
						class="form-control" name="password" id="password"
						placeholder="Password min. 6 chars" required>
				</div>

				<div class="form-group">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>

				</div>

			</form>
		</div>

	
</body>
</html>