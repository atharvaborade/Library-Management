<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.center
{
margin-left:0;
margin-right:auto;
margin-top:0;
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
<meta charset="ISO-8859-1">
<title>Issuing</title>
</head>
<a href="home.jsp" class="button">Go To Home Page </a>
<body>

<form  method="post" action="addbook">

<table style="width:80%">
<tr>
<td style="background-color:#FF0000">Book ID</td>
<td><input type="number" name="bookid" id="bookid" /></td>
</tr>

<tr>
<td style="background-color:#F0FFFF">Book Name</td>
<td ><input type="text" name="bname" id="bname"/></td>
</tr>

<tr>
<td style="background-color:#FF0000">Book Genre</td>
<td><input type="text" name="bgenre" id="bgenre"/></td>
</tr>
<tr>
<td style="background-color:#F0FFFF">Book Avaliablity</td>
<td><input type="text" name="aval" id="aval"/></td>
</tr>

</table>
<input type="submit" value="Submit">
</form>

<h3  style="color:white;">result is :<input type="hidden" name="result" id="result" value=<%= session.getAttribute("done")%>></h3>
<%
session.setAttribute("done", null);
%>
</body>
</html>