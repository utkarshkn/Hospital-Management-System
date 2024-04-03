<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<style>
.container {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 25%;
	box-shadow: 0px 0px 5px 0px grey;
	border-radius: 15px;
	padding: 10px;
	background-color: #fff;
}

.container form {
	padding: 5px 5px;
}

label {
	font-weight: bolder;
}
</style>
<body>
	<nav class="navbar navbar-light"
		style="background-color: #e3f2fd; display: flex; justify-content: space-between; position: static;">
		<a class="navbar-brand" href="/"
			style="font-size: 45px; color: red; font-weight: bold;">MORYA
			HOSPITAL</a>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/getdocloginPage" style="font-size: 20px;">Back To Login<span
					class="sr-only">(current)</span></a></li>
		</ul>
	</nav>
	<br>
	<div class="hold-transition login-page"
		style="width: 50%; margin: 0px auto; box-shadow: 0px 0px 5px 0px grey; background-color: rgb(197, 200, 195);">
		<div class="login-box">
			<div class="card card-outline card-primary">
				<div class="card-header text-center">
					<h1 class="h1">
						<b>Register</b>
					</h1>
				</div>
				<%
				if (request.getAttribute("successmsg") != null) {
				%>
				<div class="alert alert-success"
					style="max-width: 50%; text-align: center;" role="alert">
					<%=request.getAttribute("successmsg")%>
				</div>
				<%
				}
				%>
				<%
				if (request.getAttribute("errormsg") != null) {
				%>
				<div class="alert alert-danger"
					style="max-width: 50%; text-align: center;" role="alert">
					<%=request.getAttribute("errormsg")%>
				</div>
				<%
				}
				%>
				<div class="card-body">
					<form action=adddoc method="post">
						<div class="form-group">
							<label for="formGroupExampleInput">Email</label> <input
								type="email" name="email" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Email"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Name</label> <input
								type="text" name="name" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Name"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Age</label> <input
								type="number" name="age" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Age"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Date of Birth</label> <input
								type="date" name="dob" class="form-control"
								id="formGroupExampleInput" required="required"
								autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Specification</label> <input
								type="text" name="specification" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Specification"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Password</label> <input
								type="text" name="password" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Password"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Confirm Password</label> <input
								type="text" name="confirmpassword" class="form-control"
								id="formGroupExampleInput" placeholder="Confirm Password"
								required="required" autocomplete="off">
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>