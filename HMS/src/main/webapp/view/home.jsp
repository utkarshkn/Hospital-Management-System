<!doctype html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MORYA HOSPITALS</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.carousel-item {
	position: relative;
}

.carousel-item .container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: rgba(255, 255, 255, 0.7);
	padding: 20px;
	border-radius: 10px;
	max-width: 400px;
}

.carousel-item .container h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
}

.carousel-item h1 {
	position: absolute;
	top: 20px;
	left: 50%;
	transform: translateX(-50%);
	color: Black;
	text-align: center;
	width: 80%;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="/" style="font-size: 45px"> <b>MORYA
				HOSPITALS </b></a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			</ul>
			<div class="mx-2">
				<button style="margin: 5px;" class="btn btn-danger">
					<a style="color: white;" href="/getdocloginPage">Doctor Login</a>
				</button>
				<button style="margin: 5px;" class="btn btn-danger">
					<a href="/getadminloginPage" style="color: white;">
						Admin Login</a>
				</button>
			</div>
		</div>
	</nav>

	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/img/frontimg.jpg" class="d-flex w-100" height="750">
				<h1>
					<strong>Your Best Choice for Multispeciality Care in<br>Maharashtra
					</strong>
				</h1>
				<div class="container">
					<h2>Book Appointment</h2>
					<form action="/addapt" method="post">
						<%
						if (request.getAttribute("addpat") != null) {
						%>
						<div class="alert alert-success" role="alert">
							<%=request.getAttribute("addpat")%>
						</div>
						<%
						}
						%>
						<div class="form-group">
							<label for="formGroupExampleInput">Name</label> <input
								type="text" name="name" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Name"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Age</label> <input type="text"
								name="age" class="form-control" id="formGroupExampleInput"
								placeholder="Enter Age" required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Symptom</label> <input
								type="text" name="symptom" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Symptom"
								required="required" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Phone-Number</label> <input
								type="text" name="number" class="form-control"
								id="formGroupExampleInput" placeholder="Enter Phone-Number"
								required="required" autocomplete="off">
						</div>
						<div
							style="display: flex; align-content: flex-start; justify-content: space-around;">
							<button type="submit" class="btn btn-success">Save</button>
							<button type="reset" class="btn btn-primary">Reset</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="container my-4">
		<div class="row mb-2">
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-lg p-3 mb-5 bg-body rounded h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<h3 class="mb-0">Why Choose MORYA Healthcare?</h3>
						<p class="card-text mb-auto ">Largest network of the worlds
							finest and brightest medical experts who provide compassionate
							care using outstanding expertise and advanced technology.</p>

					</div>
					<div class="col-auto d-none d-lg-block">
						<img class="bd-placeholder-img" width="200" height="230"
							src="/img/1st.jpeg" alt="">
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-lg p-3 mb-5 bg-body rounded h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<h3 class="mb-0">Stop The Stroke!</h3>
						<p class="mb-auto">When someone has stroke, we lose crucial
							braincells, the key to mobility, communication and memory.</p>
					</div>
					<div class="col-auto d-none d-lg-block">
						<img class="bd-placeholder-img" width="200" height="230"
							src="/img/2nd.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-lg p-3 mb-5 bg-body rounded h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<h3 class="mb-0">MORYA Heart Institute Expertise</h3>
						<p class="card-text mb-auto ">The MORYA Heart Institutes are
							regarded as one of the best heart hospitals in India, performing
							a multitude of treatments and procedures in cardiology and
							cardiothoracic surgery.</p>

					</div>
					<div class="col-auto d-none d-lg-block">
						<img class="bd-placeholder-img" width="200" height="250"
							src="/img/3rd.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-lg p-3 mb-5 bg-body rounded h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<h3 class="mb-0">MORYA Never Sleeps</h3>
						<p class="mb-auto">Get the most advance emergency care
							anywhere in minutes just. For free Ambulance service dial "1760"</p>
					</div>
					<div class="col-auto d-none d-lg-block">
						<img class="bd-placeholder-img" width="200" height="260"
							src="/img/4th.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<footer class="container" style="text-align: center;">
		Copyright &#169; <a href="/"> MORYA HOSPITAL </a> | All Rights
		Reserved | Contact Us <a href="/"> 0253 256-654-1230</a>
	</footer>
	<br>

</body>

</body>

</html>
