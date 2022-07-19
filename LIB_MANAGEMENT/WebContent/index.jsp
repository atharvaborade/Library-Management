<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <style>
body {
  background-image: url('253524.jpg');
  background-attachment: fixed;
  background-size: cover;
  }
  .center
  {
  margin-left: auto;
  margin-right: auto;
  margin-top:50;
  }
h1 {
  font-size: 50px;
  font-weight: bolder;
   margin-top:200;
   text-shadow: 1px 1px #000000;

}
.button {
  width: 100px;
  height: 25px;
  font-family: 'Roboto', sans-serif;
  font-size: 7px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  }

.button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}
footer{
margin-left: 700;
  margin-right:100;
font-size:10px;
  font-weight: bolder;
   margin-top:222;
} 
a:hover {
  color: red;
}       
</style>
<head>
<title>
Login Page
</title>
</head>
<body>

<form  method="post" action="login">


  <div class="container" style='text-align:center'>
  <div  style="color:white">
  <h1 style="color:black" align="center" ><span>Library Management System </span></h1>
 
  </div>
  <table class="center">
  
    <tr align="center">
    <td><b>Username</b></td>
    <td><input type="text" name="username" id="username"></td>
    </tr>
    <tr align="center">
    <td><b>Password</b></td>
    <td><input type="password" name="password" id="password"></td>
    </tr>
    <tr>
    </table><br>
   <button type="submit" class="button" >LOGIN</button>
    
  </div>
  

  
</form></body>
<footer>&copy; All Copyrights Reserved 2022 </footer>

 
