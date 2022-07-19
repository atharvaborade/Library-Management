<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<style>
.center
{
margin-left:auto;
margin-right:auto;
margin-top:0;
font-size: 20px;
color:#FFFFFF;
}
h1 {
  font-size: 30px;
  font-weight: bolder;
   background-color:powderblue;

}
body{
   background-image: url('124400.jpg');
  background-attachment: fixed;
  background-size: cover;
}
a:hover {
  color: red;
}
</style>
<head>
<title>
DueDate
</title>
</head>
<form method="post">
<h1 style="color:black">Due Dates Of The Readers</h1>

<table border="2"  class="center">
<tr>
<td>Reader Id</td>
<td>Book Id</td>
<td>Issued Date</td>
<td>Due Date</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
Statement smt = con.createStatement();
String sql="select * from issue where due_date < curdate() and return_date is null;";
ResultSet result = smt.executeQuery(sql);
while(result.next())
{

%>
<tr>

<td> <%=result.getInt("readid") %></td>
<td> <%=result.getInt("bookid") %></td>
<td> <%=result.getDate("date") %></td>
<td> <%=result.getDate("due_date") %></td>
</tr>
 <%

}
%>
</table>
<%
result.close();
result.close();
result.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>>