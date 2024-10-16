<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Cancel Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSguBBum0l3nVsyveXddIZQOe7_cYP6U_rknw&s');
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: normal;
            color: #333;
        }

        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #c82333;
        }

        .confirmation-message {
            text-align: center;
            margin-top: 20px;
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Cancel Your Order</h2>

        <form method="post">
            <div class="form-group">
                <label for="cancelReason">Please tell us why you're cancelling:</label>
                <select id="cancelReason" name="cancelReason" required>
                    <option value="" disabled selected>Select a reason</option>
                    <option value="Found a better price elsewhere">Found a better price elsewhere</option>
                    <option value="Changed my mind">Changed my mind</option>
                    <option value="Shipping is too slow">Shipping is too slow</option>
                    <option value="Ordered the wrong product">Ordered the wrong product</option>
                    <option value="Other">Other reasons</option>
                </select>
            </div>

            <button type="submit" class="btn">Confirm Cancellation</button>
        </form>

        <%
            // Check if the form has been submitted
            String cancelReason = request.getParameter("cancelReason");
            if (cancelReason != null) {
        %>
            <div class="confirmation-message">
                Your order has been cancelled.<br>
                Reason: <strong><%= cancelReason %></strong>
            </div>
        <%
            }
        %>
    </div>

</body>
</html>
