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
      	<table>
      	<tr>
    		<td>Order Id</td>
    		<td>Order Date</td>
    		<td>Status</td>
    		</tr>
    		<tr>
            <c:forEach items="${orderList}" var="orderList">
  
            		<div class = "row">
            			<div class = "column">
            			 			
                      <td>${ orderList.id}</td><br>
                 <td>${orderList.date} </td><br>
                 <td> ${orderList.status} </td><br>
                    </div>
					</div>
					</c:forEach>
					</tr>
				</table>
    </body>

    </html>
    