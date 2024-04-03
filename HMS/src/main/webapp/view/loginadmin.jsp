<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous" />
<title>Admin Login</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css" />
<link rel="stylesheet"
	href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
<link rel="stylesheet" href="../../dist/css/adminlte.min.css" />
</head>
<style>
body {
	background-image: url("/img/login page.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-blend-mode: screen;
}
</style>
<body class="hold-transition login-page"
	style="width: 25%; margin: 150px auto; box-shadow: 0px 0px 5px 0px grey; background-color: rgb(197, 200, 195);">
	<div class="login-box">
		<div class="card card-outline card-primary">
			<div class="card-header text-center">
				<h1 class="h1">
					<b>Admin Login</b>
				</h1>
			</div>
			<%
			if (request.getAttribute("erroridorpass") != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=request.getAttribute("erroridorpass")%>
			</div>
			<%
			}
			%>
			<div class="card-body">
				<form action="/api/admin/adminlogin" method="post">
					<div class="form-group">
						<label for="formGroupExampleInput" style="font-weight: bold">Email
							:- </label> <input type="email" name="email" class="form-control"
							id="formGroupExampleInput" placeholder="Email"
							required="required" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="formGroupExampleInput" style="font-weight: bold">Password
							:- </label> <input type="password" name="password" class="form-control"
							id="formGroupExampleInput" placeholder="Password"
							required="required" autocomplete="off" />
					</div>
					<div class="row">
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">
								Login</button>
						</div>
					</div>
					<br>
					<div class="col-16">
						<a href="/api/admin/addadminPage">Register as Admin</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
