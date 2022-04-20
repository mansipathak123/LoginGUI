<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-f8859-1">
<title>Insert title here</title>
</head>
<body>

          <h1 align="center">You are login Successfully</h1>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jsptutorials";
String userId = "root";
String password = "1234";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="6" cellspacing="6" border="1">
<tr>

</tr>
<tr bgcolor="#FFF8DC">


<td><b>rUser_id</b></td>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM record";

 resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="F4A460">



<td><%=resultSet.getString(2) %></td>


</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<a href="http://localhost:8072/LoginDemo/logout.jsp">Logout </a>
</body>
</html>