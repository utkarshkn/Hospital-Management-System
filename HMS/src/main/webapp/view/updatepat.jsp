<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.HMS.AllEntity.Appointment" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>
<body>

	<nav class="navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="admincontroller"
			style="font-size: 45px; font-weight: bold;">MORYA HOSPITAL</a>
	</nav>

	<hr>
	<h2 style="text-align: center; margin-top: 20px;">Update Information</h2>
	<hr>
	<div class="container">
		<form action="/api/v1/updatePage" method="post">
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
				<label for="formGroupExampleInput">Blood Group</label> <input
					type="text" name="blood" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Blood Group">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Dieses</label> <input type="text"
					name="dieses" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Dieses">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Previous Prescription</label> <input
					type="text" name="prescription" class="form-control"
					id="formGroupExampleInput"
					placeholder="Enter Previous Prescription">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Fees</label> <input type="text"
					name="fees" class="form-control" id="formGroupExampleInput"
					placeholder="Enter Fees">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Urgency</label> <input
					type="text" name="urgency" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Urgency">
			</div>
			<button type="submit" class="btn btn-warning">Update</button>
			<hr>
		</form>
	</div>

</body>
</html>
