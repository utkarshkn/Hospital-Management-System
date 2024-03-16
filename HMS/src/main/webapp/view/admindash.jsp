<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Reception Dashboard</title>

</head>

<body>
	<form action="search" method="get">
		<nav class="navbar navbar-light"
			style="background-color: #e3f2fd; display: flex; justify-content: space-between; position: static;">
			<a class="navbar-brand" href="admincontroller"
				style="font-size: 45px; font-weight: bold; color: red;">MORYA
				HOSPITAL</a> <a href="addpatient" style="font-size: 20px;">Add
				Appointment</a> <a href="getonlineapp" style="font-size: 20px;">Online
				Appointments</a> <a href="admincontroller" style="font-size: 20px;">Back</a>
			<a class="btn btn-danger" href="/" style="font-size: 20px;">Logout</a>

		</nav>

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
		<br>
		<div class="container">
			<h1
				style="color: rgb(86, 86, 86); font-size: xx-large; text-align: center;">
				Patient List</h1>
			<hr>
			<br>
			<table class="table table-dashed">
				<thead style="font-weight: bold; text-align: center;"
					class="table-dark">
					<tr>
						<td>ID</td>
						<td>Name</td>
						<td>Age</td>
						<td>Blood_Group</td>
						<td>Dieses</td>
						<td>Prevoius Prescription</td>
						<td>Urgency</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody style="text-align: center;">
					<%
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS", "root", "Utkadkar@123");
					Statement st = cn.createStatement();
					ResultSet rs = st.executeQuery("select * from Patient");
					while (rs.next()) {
					%>
					<tr class="middle">
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><a href='update?id=<%=rs.getInt(1)%>'
							class='btn btn-warning'>Edit</a> <a
							href='delete?id=<%=rs.getInt(1)%>' class='btn btn-danger'>Delete</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</form>

</body>
</html>
