<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>RevShop - Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #e0eafc, #cfdef3); /* Background gradient */
        }

        .container {
            width: 95%;
            margin: 20px auto;
        }

        h2 {
            text-align: center;
            font-weight: normal;
            color: #333;
            margin-bottom: 30px;
            width: 100%;
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
            border: 2px solid white;
            background-color: #e67e22;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        .search-bar button:hover {
            background-color: #d35400;
            border-color: #d35400;
        }

        /* Filter Section */
        .filter-section {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            background-color: #fff;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* More prominent shadow */
        }

        .filter-group {
            display: flex;
            align-items: center;
            flex: 1;
        }

        .filter-group label {
            font-size: 16px;
            color: #555;
            margin-right: 10px;
        }

        .filter-group select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .filter-section button {
            padding: 10px 20px;
            border: none;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            border-radius: 3px;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth hover effect */
        }

        .filter-section button:hover {
            background-color: #0056b3;
            transform: scale(1.05); /* Slightly enlarge button on hover */
        }

        /* Product List */
        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
        }

        .product-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px; /* Rounded corners for the card */
            padding: 15px;
            margin: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Stronger shadow */
            text-align: left;
            width: calc(33% - 20px);
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth hover effect */
        }

        .product-card:hover {
            transform: translateY(-10px); /* Lift the card on hover */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3); /* Increase shadow on hover */
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            margin-bottom: 15px;
            border-radius: 5px;
        }

        .product-card h3 {
            color: #333;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 16px;
            color: #555;
            margin-bottom: 10px;
        }

        .price {
            font-size: 16px;
            color: #007bff;
            font-weight: bold;
        }

        .discount-price {
            font-size: 14px;
            color: #555;
            text-decoration: line-through;
            margin-bottom: 10px;
        }

        .btn-group {
            margin-bottom: 10px;
        }

        .btn {
            padding: 10px 15px;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth transition on hover */
        }

        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05); /* Slightly enlarge button on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .product-card {
                width: calc(50% - 20px);
            }

            .filter-section {
                flex-direction: column;
            }
        }

        @media (max-width: 576px) {
            .product-card {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Search Bar -->
        <div class="search-bar">
            <form action="search" method="get">
                <input type="text" name="pname" placeholder="Search for products...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>

        <!-- Filter Section -->
        <div class="filter-section">
            <div class="filter-group">
                <label for="category">Category:</label>
                <select id="category" name="category">
                    <option value="electronics">Electronics</option>
                    <option value="fashion">Fashion</option>
                    <option value="home">Home Appliances</option>
                </select>
            </div>

            <div class="filter-group">
                <label for="priceRange">Price Range:</label>
                <select id="priceRange" name="priceRange">
                    <option value="low">Low to High</option>
                    <option value="high">High to Low</option>
                </select>
            </div>

            <button type="submit">Apply Filters</button>
        </div>

        <!-- Product List Section -->
        <div class="product-list">
            <h2>Our Products</h2>
            <div class="row">
                <c:choose>
                    <c:when test="${not empty products}">
                        <c:forEach var="product" items="${products}">
                            <div class="product-card">
                                <img src="${product.productImage}" alt="${product.productName}">
                                <h3>${product.productName}</h3>
                                <p class="price">$${product.productPrice}</p>
                                <p class="discount-price">$${product.discountPrice}</p>
                                <p>${product.productDescription}</p>

                                <div class="btn-group">
                                    <form action="addcart" method="post" class="d-inline">
                                        <input type="hidden" name="productid" value="${product.product_id}"/>
                                        <input type="submit" value="Add To Cart" class="btn"/>
                                    </form>
                                    <a href="CheckoutController" class="btn">Buy Now</a>
                                </div>

                                <form action="addtoWishlist" method="post" class="d-inline mt-2">
                                    <input type="hidden" name="productid" value="${product.product_id}"/>
                                    <input type="submit" value="Add to Wishlist" class="btn"/>
                                </form>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <h3>No products available</h3>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

</body>
</html>
