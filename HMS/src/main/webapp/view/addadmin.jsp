<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="/"
			style="font-size: 35px; font-weight: bold;">MORYA HOSPITAL</a>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/" style="font-size: 20px;">Back <span
					class="sr-only">(current)</span></a></li>
		</ul>
	</nav>
<div class="container">
		<form action="" method="post">
			<div class="form-group">
				<label for="formGroupExampleInput">First Name</label> <input type="text"
					name="name" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Name">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Last Name</label> <input type="text"
					name="age" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Age">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Age</label> <input
					type="text" name="symptom" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Symptom">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Date of Birth</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Username</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Email</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Password</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Confirm Password</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Phone Number</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>