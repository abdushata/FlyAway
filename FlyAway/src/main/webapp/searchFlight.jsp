<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <% 
    String source= request.getParameter("source");
    String dest = request.getParameter("dest"); 
    String date = request.getParameter("date"); 
    %>
    
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "flight";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1>FlyAway</h1>
    <h2>Available Flights</h2>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search flight</title>
</head>
<body>
   <table border="1">
<tr>
<td>Source</td>
<td>Dest</td>
<td>Available Seats</td>
<td>Date</td>
<td>Book</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql = "select * from plane where source='"+source+"'and dest ='"+dest+"';";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("dest") %></td>
<td><%=resultSet.getString("seats") %></td>
<td><%=resultSet.getString("date") %></td>
<td>
<form action="BookFlight.jsp" method="post">
<button>Book</button></form></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</body>
</html>