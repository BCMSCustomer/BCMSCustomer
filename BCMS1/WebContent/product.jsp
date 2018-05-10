<%@include file="custHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>

    <head>
        <title> Products</title>
        
    </head>

    <body>
            <c:forEach items="${productList}" var="productList">
                    <tr><td>${productList.id }</td></tr>
                    <tr><td>${productList.name}</td></tr>
                    <tr><td>${productList.description}</td></tr>
                    <tr><td>${productList.price}</td></tr>
					<tr><td>--------------------------------------<td></tr>
            </c:forEach>

    </body>

    </html>
    <%@include file="custFooter.jsp"%>