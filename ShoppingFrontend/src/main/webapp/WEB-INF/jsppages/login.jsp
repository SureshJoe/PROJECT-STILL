<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>loginPage</title>

<style type="text/css">
@charset "ISO-8859-1";
body
{
margin: 0;
padding: 0;
font-family: White;
background: #b2bec3;
}
.box
{
width: 300px;
padding: 40px;
position: absolute;
top: 20%;
left: 30%;
transform: transform(-50%,-50%);
background: #2d3436;
text-alig: center;
}
.box h1
{
color: white;
text-transform: uppercase;
font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]
{
border: 0;
background: none;
display: block;
margin: 20px auto;
text-align: center;
border: 2px solid #3498db;
padding: 14px 10px;
width: 200px;
outline: none;
color: white;
border-radius: 24px;
transition: 0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus
{
width: 280px;
border-color: #2ecc71;	
}
.box input[type= "submit"]
{
border: 0;
background: none;
display: block;
margin: 20px auto;
text-align: center;
border: 2px solid #2ecc71;
padding: 14px 40px;
outline: none;
color: white;
border-radius: 24px;
transition: 0.25s;
cursor: pointer;
}
.box input[type= "submit"]
{
background: #2ecc71;
}
</style>

</head>
<body>
<form method="post" action="<c:url value="/perform_login"/>">
<%@ include file="HeaderAdmin.jsp"%>
${ErrorMessage}
<table>
<tr>
<td>User Name</td>
<td><input name="username"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="LOGIN"></td>
</tr>
</table>
</form>
</body>
</html>