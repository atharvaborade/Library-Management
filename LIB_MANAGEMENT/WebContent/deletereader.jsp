<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="deletereader">
<table style="width:80%">
<tr>
<td style="background-color:#FF0000">Reader ID</td>
<td><input type="number" name="rid" id="rid" /></td>
</tr>

<tr>
<td style="background-color:#FF0000">Reader Name</td>
<td><input type="text" name="rname" id="rname" /></td>
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