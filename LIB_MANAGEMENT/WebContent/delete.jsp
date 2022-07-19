<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.center
{
margin-left:auto;
margin-right:auto;
margin-top:80;
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
<title>Deletion</title>
</head>
<body>

<form  method="post" action="delete">

<table style="width:80%">
<tr>
<td style="background-color:#F0FFFF">Book ID</td>
<td><input type="number" name="bookid" id="bookid"/></td>
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