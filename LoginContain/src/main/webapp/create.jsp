<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.centerAllign{
margin: auto;
width:60%;
padding:10px;
text-align:center;
}

</style>
</head>
<body>

<h1 align="center"> Submit the Details</h1>

<form action="submit.jsp" method="post">
<table align="center" border="1">
<tbody>

<tr>
<th>First Name</th>
<td><input type="text"name="firstname" value=""/> </td>
</tr>

<tr>
<th>Last Name</th>
<td><input type="text"name="lastname" value=""/> </td>
</tr>

<tr>
<th>Age</th>
<td><input type="text"name="age" value=""/> </td>
</tr>

<tr>
<th>Gender</th>
<td><select name="gender"> 
<option>Male</option>
<option>Female</option>
</select>
</td>
</tr>

<tr>
<th>Address</th>
<td><input type="text"name="Address" value=""/> </td>
</tr>

<tr>
<th>Email Id</th>
<td><input type="text"name="emailid" value=""/> </td>
</tr>

<tr>
<th>Phone Number</th>
<td><input type="text"name="phonenumber" value=""/></td>
</tr>

<tr>
<th>Password</th>
<td><input type="text"name="password" value=""/></td>
</tr>


</tbody>
</table>



<div class="centerAllign">
<input type="reset" value="RESET" />
<input type="submit" value="SUBMIT"/>
</div>
</form>

</body>
</html>