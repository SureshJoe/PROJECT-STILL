<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstarp.min.js"></script>
<title>Header</title>
<style>
<%--.container-fluid 
{
background-color:grey;
}--%>
.container {
background-color:#ff7675;
}
</style>
</head>
<body style="margin: 0;padding: 0;font-family: sans-serif;background: white;">
<div class="container"><br>
<head>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<ul style="top:50%;left:50%;trasnform: translate(-50%,-50%);margin: 0;padding: 20px 0;background:#d2dae2;display: flex;border-radius: 10px;box-shadow: 0 10px 30px rgba(0,0,0,.3)">
<li style="list-style: none;text-align= center;display: block;">
<a href="#" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Home">Home</div>
</div>
</a>
</li>
 <c:if test="${username=='Admin'}">
<li>
<a href="<c:url value="/AddCategory"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Manage Category">Manage Category</div>
</div>
</a>
</li>
<li>
<a href="<c:url value="/AddSupplier"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Manage Supplier">Manage Supplier</div>
</div>
</a>
</li>
<li>
<a href="<c:url value="/AddProduct"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Manage Product">Manage Product</div>
</div>
</a>
</li>
</c:if>
<li>
<a href="<c:url value="/ProductDisplay"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Manage ProductDisplay">Product</div>
</div>
</a>
</li>
<c:if test="${not empty SuccessMessage}">
<li>
<a href="<c:url value="/Cart"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="Cart">Cart</div>
</div>
</a>
</li>
</c:if>
<c:if test="${empty SuccessMessage}">
<li>
<a href="<c:url value="/SignUp"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="SignUp">SignUp</div>
</div>
</a>
</li>
<li>
<a href="<c:url value="/login"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="fa fa-window-restore" aria-hidden="true"></i>
<div class="name" data-text="login">login</div>
</div>
</a>
</li>
</c:if>
<c:if test="${not empty SuccessMessage}">
<li>
<a href="<c:url value="/perform_logout"/>" style="text-decoration: none;padding: 0 50px;display:block;">
<div class="icon">
<i class="glyphicon glyphicon-log-out" aria-hidden="true"></i>
<div class="name" data-text="Logout">Logout</div>
</div>
</a>
</li>
</c:if>
<li>${username}</li>
</ul><br>
</body>
</html>