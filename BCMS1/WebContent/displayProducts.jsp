<%@include file="custHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>

    <head>
        <title> Products</title>
        <style>
        .row :: after {
        	content:"";
        	margin : auto;
        	clear:both;
        	display:table;
        }
        .column {
        	float : left;
        	width:25%;
        	padding:5px;
        }
            table,
            th,
            td {
                width: 100%;
                margin: auto;
                border: 1px solid white;
                border-collapse: collapse;
                text-align: center;
                font-size: 20px;
                table-layout: fixed;
                background: black;
                opacity: 0.5;
                color: white;
                margin-top: 120px;
            }
        </style>
    </head>
    

    <body>
            <c:forEach items="${productList}" var="productList">
            	
            	<form id = "${productList.id}">
            		<div class = "row">
            			<div class = "column">
					<img src ="./products/${productList.picture}" width = "1px" height = "1px">
                    <td>ProductId : ${productList.id }</td><br>
                    <td>Product Name : ${productList.name}</td><br>
                    <td>Product Description : ${productList.description}</td><br>
                    <td>Product Price : ${productList.price}</td><br>
                    Quantity :<input type = "number" name = "quantity" min = "1" max = "10"><br>
      <!--               <input type="submit" name="addToCart" value="Add to cart"> -->
                    <a href="./BCMSController?action=addToCart&pictureId=${productList.id }">ADD TO CART</a>
                   <!--   <input type="submit"  value="Place Order">-->
                    
                    </div>
					</div>
				</form>
            </c:forEach>

    </body>

    </html>
    