<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Medicine</title>
</head>
<body>
<nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="admindash" style="font-size: 35px; font-weight: bold;">MORYA HOSPITAL</a>
</nav>
<h2 style="text-align: center; margin-top: 20px;">Add Medicine</h2>
<hr>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="/addmed" method="post">
                <div class="form-group">
                    <input type="hidden" name="id" value="${appointment.id}">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput">Medicine Name</label>
                    <input type="text" name="name" class="form-control" id="formGroupExampleInput" placeholder="Enter Name">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
