<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<style>
input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #a92f1e;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 50;
    background-color: #a92f1e;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #a92f1e;
}
a:link,a:visited{
color:#a92f1e;
text-decoration:none;

}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
body {
    padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
    padding-bottom: 40px;
    width:700px;
    margin:auto;
    background-color: #f5f5f5;
    font-family: sans-serif;
    
}
body ul{

list-style:none;
}
h1 {
	text-align: center;
	padding-bottom: 30px;
	color: #a92f1e;	
	font-size: 40px;
	
}

h2 {
	color: #e3472c;
	
}


.container {
	max-width: 500px;
}


</style>
</head>
<body>
<div class="container">
<h1>Lista de Produtos</h1>
<p>
<form action="searchProduct">
<input type="text" name="name" placeholder="Enter product's name">&nbsp;&nbsp;<input type="submit" value="Search">

</form>
</p>

<table>
<tr>
<th>Name</th>
<th>Price</th>
</tr>
<c:forEach items="${products}" var="prod">
<tr>
<td>${prod.name}</td>
<td>${prod.price}</td>
<td><a href="addToCart/${prod.id}">Add to cart</a></td>
</tr>



</c:forEach>



</table>
<p><a href="categories">Categorias</a></p>

<% if(session.getAttribute("prodsess") != null){
%>
<p>
<a href="cart">Show Cart</a>
</p>
<%
}
%>
</div>
</body>
</html>