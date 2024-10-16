<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Background Gradient and Abstract Shapes */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e0f7fa, #80deea);
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        /* Animated Confetti */
        .confetti {
            position: absolute;
            top: -50px;
            left: 50%;
            width: 20px;
            height: 20px;
            background: #ffeb3b;
            border-radius: 50%;
            animation: confetti 5s infinite;
            opacity: 0.8;
        }

        .confetti:nth-child(2) { background: #ff5722; animation-duration: 5.5s; }
        .confetti:nth-child(3) { background: #8bc34a; animation-duration: 4.5s; }
        .confetti:nth-child(4) { background: #03a9f4; animation-duration: 4.8s; }
        .confetti:nth-child(5) { background: #e91e63; animation-duration: 5.2s; }

        @keyframes confetti {
            0% {
                transform: translateY(-20px) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(700px) rotate(720deg);
                opacity: 0;
            }
        }

        /* Container and Typography */
        .container {
            position: relative;
            max-width: 600px;
            margin: 100px auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            z-index: 2;
        }

        h2 {
            color: #388e3c;
            font-size: 2.5rem;
            margin-bottom: 20px;
            font-weight: 700;
        }

        h4 {
            color: #757575;
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        p {
            color: #9e9e9e;
            font-size: 1rem;
        }

        .btn {
            display: inline-block;
            width: 100%;
            padding: 15px;
            background-color: #43a047;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 1.2rem;
            font-weight: 500;
            transition: background-color 0.4s, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #2e7d32;
            transform: translateY(-3px);
        }

        /* Abstract shapes for background */
        .shape1, .shape2, .shape3 {
            position: absolute;
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 50%;
            z-index: 1;
        }

        .shape1 {
            width: 150px;
            height: 150px;
            top: 10%;
            left: 5%;
            animation: floatShape1 6s ease-in-out infinite;
        }

        .shape2 {
            width: 100px;
            height: 100px;
            bottom: 10%;
            right: 10%;
            animation: floatShape2 8s ease-in-out infinite;
        }

        .shape3 {
            width: 200px;
            height: 200px;
            top: 40%;
            right: 5%;
            animation: floatShape3 7s ease-in-out infinite;
        }

        @keyframes floatShape1 {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        @keyframes floatShape2 {
            0%, 100% { transform: translateX(0); }
            50% { transform: translateX(20px); }
        }

        @keyframes floatShape3 {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-30px); }
        }

    </style>
</head>
<body>

    <!-- Confetti Animation -->
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>

    <!-- Abstract Background Shapes -->
    <div class="shape1"></div>
    <div class="shape2"></div>
    <div class="shape3"></div>

    <!-- Order Success Message -->
    <div class="container">
        <h2>Hurray!</h2>
        <h4>Your order is placed successfully.</h4>
        <p>Thank you for choosing RevShop!</p>

        <!-- Redirect to Review Page Button -->
        <a href="review,.jsp" class="btn">Leave Feedback</a>
    </div>

</body>
</html>
