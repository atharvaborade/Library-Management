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
<title>Reader</title>
</head>
<body>
 <a href="allreader.jsp" class="button">SHOW ALL READER LIST</a>
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
  <a href="deletereader.jsp" class="button">DELETE READER </a>
<form  method="post" action="Reader">

<table style="width:80%">
<tr>
 <td style="background-color:#FF0000">Reader ID</td>
   

<td><input type="number" name="rid" id="rid"/></td>
</tr>

<tr>
<td style="background-color:#F0FFFF">Reader Name</td>
<td><input type="text" name="rname" id="rname"/></td>
</tr>

<tr>
<td style="background-color:#FF0000">Reader Contact No</td>
<td><input type="number" name="rno" id="rno"/></td>
</tr>

<tr>
<td style="background-color:#F0FFFF">Reader Adddress</td>
<td><input type="text" name="raddress" id="raddress"/></td>
</tr>

<tr>
<td style="background-color:#FF0000">Reader Adhar</td>
<td><input type="number" name="radhar" id="radhar"/></td>
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