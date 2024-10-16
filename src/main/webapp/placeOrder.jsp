<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Place Order</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLJlNc9A8U0QAcYhQLB4Xc46LcUEzzX91b5Q&s);
            margin: 0;
            padding: 0;
            background-repeat: no-repeat; /* Prevents the image from repeating */
		    background-size: cover; /* Makes the image cover the entire body */
		    background-position: center; /* Centers the image */
		    filter: brightness(1.1) contrast(1.2) blur(0);
  
            
        }

        .container {
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background-color: #F4C2C2;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .actions {
    margin-top: 30px;
    display: flex;
    justify-content: space-between;
    gap: 20px; /* Add space between the buttons */
}
        

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-group input[readonly] {
            background-color: #f5f5f5;
            color: #333;
        }

        .status {
            color: #dc3545;
            font-weight: bold;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 15px;
            background-color: #ff3386;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #218838;
        }
        
        .btn-primary {
            background-color: #ff3386;
        }

        .btn-secondary {
            background-color: #ff3386;
        }

        .btn-secondary:hover {
            background-color: #c82333;
        }

        .summary {
            margin-top: 20px;
            font-size: 1.2em;
            font-weight: bold;
            text-align: right;
        }

        .actions {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        .actions a {
            width: 32%;
            text-align: center;
        }

        .message {
            color: #28a745;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .two-columns {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .column {
            flex: 1;
        }

        .order-summary {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            background-color: #f9f9f9;
        }

        .order-summary h3 {
            margin-top: 0;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Confirm Your Order</h1>

        <!-- Display Message -->
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <form action="orderConfirmation" method="post">
            <div class="two-columns">
                <!-- Delivery Address -->
                <div class="column">
                    <div class="form-group">
                        <label for="deliveryAddress">Delivery Address:</label>
                        <textarea id="deliveryAddress" name="deliveryAddress" rows="4">Enter your address</textarea>
                    </div>

                    <!-- Order Status -->
                    <div class="form-group">
                        <label>Status:</label>
                        <p class="status">Pending</p>
                    </div>
                </div>

                <!-- Order Summary -->
                <div class="column">
                    <div class="order-summary">
                        <h3>Order Summary</h3>
                        <div class="form-group">
                            <label for="totalPrice">Total Price:</label>
                            <input type="text" id="totalPrice" name="totalPrice" value="${totalprice}" readonly />
                        </div>

                        <!-- Payment Options -->
                        <div class="form-group payment-options">
                            <label for="paymentMethod">Payment Method:</label>
                            <select id="paymentMethod" name="paymentMethod" required>
                                <option value="credit_card">Credit Card</option>
                                <option value="paypal">PayPal</option>
                                <option value="bank_transfer">Bank Transfer</option>
                                <option value="cash_on_delivery">Cash on Delivery</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Buyer ID (Hidden) -->
            <input type="hidden" name="buyerId" value="${buyerId}" />

            <!-- Buttons -->
            <div class="actions">
               <a href="ordersuccess.jsp" class="btn btn-primary">Place Order</a>

                <a href="cancelOrder.jsp" class="btn btn-secondary">Cancel Order</a>
                <a href="continueShopping" class="btn">Continue Shopping</a>
            </div>
        </form>
    </div>

</body>
</html>
