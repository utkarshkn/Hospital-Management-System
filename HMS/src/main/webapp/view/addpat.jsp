<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Add Patient</title>
<style>


.container-sm {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 25%;
	margin-top: 170px;
	box-shadow: 0px 0px 5px 0px grey;
	border-radius: 15px;
	padding: 10px;
	background-color: #fff;
}

.container-sm form {
	padding: 5px 5px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-light"
		style="background-color: #e3f2fd; display: flex; justify-content: space-between;">
		<a class="navbar-brand" href="admincontroller"
			style="font-size: 45px; font-weight: bold; color: red;">MORYA
			HOSPITAL</a> <a class="btn btn-success" href="admincontroller"
			style="font-size: 20px;">List of Patient</a>
	</nav>
	<br>
	<h1
		style="color: rgb(86, 86, 86); font-size: xx-large; text-align: center;">
		Add Patient</h1>
	<hr>
	<div class="container-sm">
		<form action="insert" method="post">
			<div class="text text-danger"
				style="text-align: center; font-size: 20px">
				<%
				if (request.getAttribute("succespat") != null) {
					out.println(request.getAttribute("successpat"));
				}
				%>
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Name</label>
				<input type="text" name="name" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Name"
					required="required" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Age</label>
				<input type="text" name="age" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Age"
					required="required" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Blood
					Group</label> <input type="text" name="blood" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Blood Group"
					required="required" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Disease</label>
				<input type="text" name=dieses class="form-control"
					id="formGroupExampleInput" placeholder="Enter Disease"
					required="required" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Previous
					Prescription</label> <input type="text" name="prescription"
					class="form-control" id="formGroupExampleInput"
					placeholder="Enter Previous Prescription" required="required"
					autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Urgency</label>
				<input type="text" name="urgency" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Urgency"
					required="required" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput" style="font-weight: bold;">Fees</label>
				<input type="text" name="fees" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Fees"
					required="required" autocomplete="off">
			</div>
			<div
				style="display: flex; align-content: flex-start; justify-content: space-around;">
				<button type="submit" class="btn btn-success">Save</button>
				<button type="reset" class="btn btn-primary">Reset</button>
			</div>
		</form>
	</div>
</body>
</html>
