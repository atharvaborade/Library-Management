<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<style>
.center
{
margin-left:auto;
margin-right:auto;
margin-top:80;
font-size: 20px;
font-weight: bold;
color:#FFFFFF;

}
h1 {
  font-size: 30px;
  font-weight: bolder;
   margin-top:0;

}
body {
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
All Avaliable Books
</title>
</head>
<form method="post">
<h1 style="background-color:powderblue">All Books Are Here</h1>
<table border="2"  class="center">
<tr >
<td >Reader ID</td>
<td>Reader Name</td>
<td>Reader Contact No.</td>
<td>Reader Address</td>
<td>Reader Adhar No.</td>
</tr>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
Statement smt = con.createStatement();
String sql="select * from reader ";
ResultSet result = smt.executeQuery(sql);
while(result.next())
{

%>
<tr>

<td> <%=result.getInt("rid") %></td>
<td> <%=result.getString("rname") %></td>
<td> <%=result.getString("rno") %></td>
<td> <%=result.getString("raddress") %></td>
<td> <%=result.getString("radhar") %></td>


</tr>

 <%

}
%>

</table>

<%

result.close();
result.close();
result.close();
result.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>ml>