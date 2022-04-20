<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">Your submitted details</h1>
<table align="center" border="1">
<tbody>

<tr>
<td>First name</td>
<td><%=request.getParameter("firstname") %></td>
</tr>

<tr>
<td>Last name</td>
<td><%=request.getParameter("lastname") %></td>
</tr>

<tr>
<td>Age</td>
<td><%=request.getParameter("age") %></td>
</tr>

<tr>
<td>Gender</td>
<td><%=request.getParameter("gender") %></td>
</tr>

<tr>
<td>Address</td>
<td><%=request.getParameter("address") %></td>
</tr>

<tr>
<td>Email Id</td>
<td><%=request.getParameter("emailid") %></td>
</tr>

<tr>
<td>Phone Number</td>
<td><%=request.getParameter("phonenumber") %></td>
</tr>

<tr>
<td>Password</td>
<td><%=request.getParameter("password") %></td>
</tr>


</tbody>
</table>
</body>
</html>