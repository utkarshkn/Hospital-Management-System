
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.HMS.AllEntity.Appointment"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>
<body>
	<style>
.container {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 25%;
	margin-top: 120px;
	box-shadow: 0px 0px 5px 0px grey;
	border-radius: 15px;
	padding: 10px;
	background-color: #fff;
}

.container form {
	padding: 5px 5px;
}
</style>

	<nav class="navbar navbar-light"
		style="background-color: #e3f2fd; display: flex; justify-content: space-between; position: static;">
		<a class="navbar-brand" href="admincontroller"
			style="font-size: 45px; font-weight: bold; color: red;">MORYA
			HOSPITAL</a> <a class="btn btn-primary" href="admincontroller"
			style="font-size: 20px;">Appointment</a>
	</nav>

	<h2 style="text-align: center; margin-top: 20px;">Update
		Information</h2>
	<hr>
	<div class="container">
		<form action="/api/v1/updatePage?id=${patient.id}" method="post">
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Name</label>
				<input type="text" value="${patient.name}" name="name"
					class="form-control" id="formGroupExampleInput" required="required"
					autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Age</label>
				<input type="text" name="age" class="form-control"
					id="formGroupExampleInput" value="${patient.age}"
					autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Blood
					Group</label> <input type="text" name="blood" class="form-control"
					id="formGroupExampleInput" value="${patient.blood}"
					autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Disease</label>
				<input type="text" name=dieses class="form-control"
					id="formGroupExampleInput" value="${patient.dieses}"
					autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Previous
					Prescription</label> <input type="text" name="prescription"
					class="form-control" id="formGroupExampleInput"
					value="${patient.prescription}" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Urgency</label>
				<input type="text" name="urgency" class="form-control"
					id="formGroupExampleInput" value="${patient.urgency}"
					autocomplete="off">
			</div>
			<div
				style="display: flex; align-content: flex-start; justify-content: space-around;">
				<button type="submit" class="btn btn-warning">Update</button>
				<button type="reset" class="btn btn-primary">Reset</button>
			</div>
		</form>
	</div>

</body>
</html>
