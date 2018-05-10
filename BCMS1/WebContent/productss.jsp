<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer Products</title>
<link rel="stylesheet" type="text/css" href="./Resources/productform1.css"/>
</head>
<body>

<ul class="product_gallery">
<c:forEach items="${productList}" var="productList">
<li class="T-shirts_product">
<img src="./products/${productList.picture}" height="90px" width="90"/>
<div class="product_information">
<h4>Product title</h4>
<span>$50</span>
</div>
<div class="product_description">
<p><td>ProductId : ${productList.id }</td><br>
                    <td>Product Name : ${productList.name}</td><br>
                    <td>Product Description : ${productList.description}</td><br>
                    <td>Product Price : ${productList.price}</td><br>
</p>
<a href="#" class="add_cart">Add to cart</a>
<input type="number" name="quantity" min="1" max="10"<p>Quantity</p>/>
<style>
body{
color:#fff;
font-size:15px;
}
</style>
</div>
</li>
</c:forEach>

</ul>
</body>
</html>