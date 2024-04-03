<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Add Appointment</title>
</head>
<body>


	<nav class="navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="admindash"
			style="font-size: 35px; font-weight: bold;">MORYA HOSPITAL</a>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/api/v2/getinfojsp" style="font-size: 20px;">Appointment <span
					class="sr-only">(current)</span></a></li>
		</ul>
	</nav>


	<hr>
	<h2 style="text-align: center; margin-top: 20PX;">Admin Dashboard</h2>
	<a style="color: rgb(86, 86, 86); font-size: x-large;"><marquee
			behavior="scroll" direction="left"> Welcome to Admin
			Dashboard. Please find the patient list below!!. Click Appointments
			to view and update Appointments, Click Add Appointment to add new
			Appointment</marquee></a>
	<hr>

	<div class="container">
		<form action="/api/v2/addapp" method="post">
			<div class="form-group">
				<label for="formGroupExampleInput">Name</label> <input type="text"
					name="name" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Name">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Age</label> <input type="text"
					name="age" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Age">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Symptom</label> <input
					type="text" name="symptom" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Symptom">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Phone-Number</label> <input
					type="text" name="number" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Phone-Number">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>