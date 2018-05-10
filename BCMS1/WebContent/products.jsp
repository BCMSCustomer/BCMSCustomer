<%@include file="custHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>

    <head>
        <title> Products</title>
        <style>
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

    <body bgcolor=yellow>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
            </tr>
            <c:forEach items="${productList}" var="productList">
                <tr><td>
					<img src = "./products/${productList.picture}" width ="25px" height="25px">
					</td>
                   <td>${productList.id }</td>
                    <td>${productList.name}</td>
                    <td>${productList.description}</td>
                    <td>${productList.price}</td>
                </tr>

            </c:forEach>
        </table>

    </body>

    </html>
    <%@include file="custFooter.jsp"%>