<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Orders</title>
<!-- Add styles -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        margin: 0;
        padding: 0;
    }
    
    h2 {
        text-align: center;
        margin-top: 20px;
        color: #4CAF50;
    }
    
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    
    table, th, td {
        border: 1px solid #ddd;
    }
    
    th, td {
        padding: 12px;
        text-align: left;
    }
    
    th {
        background-color: #4CAF50;
        color: white;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    
    p {
        text-align: center;
        font-size: 1.2em;
        color: #777;
    }
    
    .btn-container {
        text-align: center;
        margin-top: 20px;
    }
    
    .btn {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 4px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    
    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Your Orders</h2>

    <!-- Check if the list is empty -->
    <c:choose>
        <c:when test="${empty orders}">
            <p>No orders yet.</p>
        </c:when>
        <c:otherwise>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Buyer ID</th>
                        <th>Shipping Address</th>
                        <th>Status</th>
                        <th>Total Amount</th>
                        <th>Order Date</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Quantity</th>
                        <th>Date Added</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through the orders and display the details -->
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td>${order.orderId}</td>
                            <td>${order.buyerId}</td>
                            <td>${order.shippingAddress}</td>
                            <td>${order.status}</td>
                            <td>${order.totalAmount}</td>
                            <td>${order.orderDate}</td>
                            <td>${order.productName}</td>
                            <td>${order.productPrice}</td>
                            <td>${order.cartQuantity}</td>
                            <td>${order.dateAdded}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
    
    <!-- Add button to redirect to addproduct.jsp -->
    <div class="btn-container">
        <a href="addproduct.jsp" class="btn">Add New Product</a>
    </div>
</div>

</body>
</html>
