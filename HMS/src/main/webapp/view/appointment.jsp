<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>


<body>

	<nav class="navbar navbar-light"
		style="background-color: #e3f2fd; display: flex; justify-content: space-between;">
		<a class="navbar-brand" href="admincontroller"
			style="font-size: 45px; font-weight: bold; color: red;">MORYA
			HOSPITAL</a> <a class="btn btn-warning" href="admincontroller"
			style="font-size: 20px;">Back</a>
	</nav>
	<br>
	<div class="text text-danger"
			style="text-align: center; font-size: 20px; margin: 0 auto; width: 25%;">
			<%
			if (request.getAttribute("msg") != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=request.getAttribute("msg")%>
			</div>
			<%
			}
			%>
		</div>
	<h1
		style="color: rgb(86, 86, 86); font-size: xx-large; text-align: center;">
		Patient List</h1>
	<hr>

	<div class="container">
		<table class="table table-dashed">
			<thead style="font-weight: bolder;" class="table-dark">
				<tr class="middle">
					<td>ID</td>
					<td>Name</td>
					<td>Age</td>
					<td>Symptoms</td>
					<td>Number</td>
					<td>Action</td>
				</tr>
			</thead>
			<tbody>
				<%
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS", "root", "Utkadkar@123");
				Statement st = cn.createStatement();
				ResultSet rs = st.executeQuery("select * from Appointment");
				while (rs.next()) {
				%>
				<tr class="middle">
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(4)%></td>
					<td style="display: flex; justify-content: space-evenly">
						<a href='deleteonline?id=<%=rs.getInt(1)%>' class='btn btn-danger'>Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
<style>
.middle {
	text-align: center;
}
</style>