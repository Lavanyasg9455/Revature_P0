<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>RevShop - Product List</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Header Styling */
        header {
            background-color: #2c3e50; /* Dark color */
            padding: 15px;
            color: white;
            position: relative;
            text-align: center; /* Center the header content */
        }

        h1 {
            margin: 0; /* Remove default margin */
        }

        nav {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; /* Center nav items */
            align-items: center;
            flex-wrap: wrap; /* Allows items to wrap on smaller screens */
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }

        nav a:hover {
            color: #e67e22;
        }

        .profile-icon {
            position: absolute;
            right: 15px;
            top: 15px;
        }

        .profile-icon form {
            display: inline;
        }

        .profile-icon .btn {
            background-color: #e67e22;
            color: white;
            border: 2px solid white; /* Changed border style */
            font-size: 24px;
            border-radius: 5px; /* Adjust border radius */
        }

        .profile-icon .btn:hover {
            background-color: #d35400;
            border-color: #d35400; /* Change border color on hover */
        }

        /* Search Bar Styling */
        .search-bar {
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 15px;
        }

        .search-bar input {
            padding: 10px;
            border-radius: 5px 0 0 5px;
            border: none;
            outline: none;
            width: 300px;
        }

        .search-bar button {
            padding: 10px;
            border-radius: 0 5px 5px 0;
            border: 2px solid white; /* Changed border style */
            background-color: #e67e22;
            color: white;
            cursor: pointer;
        }

        .search-bar button:hover {
            background-color: #d35400;
            border-color: #d35400; /* Change border color on hover */
        }

        /* Main Content Styling */
        .container {
            max-width: 1200px;
            margin: 20px auto; /* Added margin for spacing */
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Product Card Styling */
        .product-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            border-bottom: 1px solid #ddd;
            margin-bottom: 10px;
        }

        .product-card h3 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        .product-card p {
            margin: 5px 0;
            font-size: 14px;
            color: #777;
        }

        .product-card .price {
            font-size: 18px;
            font-weight: bold;
            color: #e67e22;
            margin-bottom: 5px;
        }

        .product-card .discount-price {
            font-size: 16px;
            text-decoration: line-through;
            color: #999;
            margin-bottom: 10px;
        }

        .product-card .btn-group {
            display: flex;
            justify-content: center; /* Centering buttons */
            margin-top: 10px;
        }

        .product-card .btn {
            padding: 10px 15px;
            background-color: #e67e22;
            color: #fff;
            border: 2px solid white; /* Changed border style */
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 14px;
            margin: 0 10px; /* Added margin between buttons */
        }

        .product-card .btn:hover {
            background-color: #d35400;
            border-color: #d35400; /* Change border color on hover */
        }

        /* Footer Styling */
        footer {
            background-color: #2c3e50; /* Dark color */
            color: white;
            padding: 10px 0;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
            padding: 10px;
        }

        /* Responsive Media Queries */
        @media (max-width: 768px) {
            .product-card {
                width: 45%;
            }

            .search-bar {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .product-card {
                width: 100%;
            }

            nav a {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Header and Navigation Bar -->
    <header>
        <h1>RevShop</h1>
        <nav>
            <a href="#">View Products</a>
            <div class="search-bar">
                <form action="search" method="get">
                    <input type="text" name="pname" placeholder="Search for products...">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </form>
            </div>
            <div>
                <form action="myitems" method="post" class="d-inline">
                    <input type="submit" value="Cart" class="btn btn-primary">
                </form>
                <form action="mywishlist" method="post" class="d-inline">
                    <input type="submit" value="Favorites" class="btn btn-primary">
                </form>
                <form action="myorders" method="post" class="d-inline">
                    <input type="submit" value="My Orders" class="btn btn-primary">
                </form>
            </div>
        </nav>
        <!-- Profile Icon -->
        <div class="profile-icon">
            <form action="profile" method="post">
                <button type="submit" class="btn">
                    <i class="fas fa-user"></i>
                </button>
            </form>
        </div>
    </header>

    <!-- Main Product Section -->
    <div class="container">
        <h2>Our Products</h2>
        <div class="row">
            <c:forEach var="product" items="${products}">
                <div class="col-md-4">
                    <div class="product-card">
                        <img src="${product.productImage}" alt="${product.productName}">
                        <h3>${product.productName}</h3>
                        <p class="price">$${product.productPrice}</p>
                        <p class="discount-price">$${product.discountPrice}</p>
                        <p>${product.productDescription}</p>
                        
                        <div class="btn-group">
                            <form action="addcart" method="post" class="d-inline">
                                <input type="hidden" name="productid" value="${product.product_id}"/>
                                <input type="submit" value="Add To Cart" class="btn btn-warning"/>
                            </form>
                            <a href="placeOrder.jsp" class="btn btn-success">Buy Now</a>
                        </div>
                        
                        <form action="addtoWishlist" method="post" class="d-inline mt-2">
                            <input type="hidden" name="productid" value="${product.product_id}"/>
                            <input type="submit" value="Add to Wishlist" class="btn btn-secondary"/>
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 RevShop. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
