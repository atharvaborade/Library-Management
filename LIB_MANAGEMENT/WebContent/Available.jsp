<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<style>

.center
{
margin-left:0;
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
Avaliable Books
</title>
</head>
<form method="post">
<h1 >Available Books Are Here</h1>
 <a href="addbook.jsp" class="button">ADD BOOKS HERE !</a>
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
<a href="delete.jsp" class="button">DELETE BOOKS HERE</a>

<table border="2"  class="center">
<tr>
<td>ID</td>
<td>Book Name</td>
<td>Genre</td>
</tr>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libmanage","root","password@1234");
Statement smt = con.createStatement();
String sql="select * from books where aval='y'";
ResultSet result = smt.executeQuery(sql);
while(result.next())
{

%>
<tr>

<td> <%=result.getInt("bookid") %></td>
<td> <%=result.getString("bname") %> <a href="Issue.jsp"> Issue</a></td>
<td> <%=result.getString("bgenre") %></td>

</tr>

 <%

}
%>

</table>

<%
%>



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
 <a href="allbooks.jsp" class="button">All BOOKS HERE</a>

</form>

<body>

</body>