<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Seller Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }
        .profile-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #343a40;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }
        .header-box {
            background-color: #e9ecef;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 30px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header-buttons {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .header-buttons form {
            margin: 0 10px; 
        }
        .product-list {
            margin-top: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
        }
        .product-card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .product-card h5 {
            margin: 0;
            font-size: 1.25rem;
        }
        .product-card p {
            margin: 0;
            color: #555;
        }
        .product-card p strong {
            color: #333;
        }
        @media (max-width: 768px) {
            .profile-container {
                padding: 20px;
            }
            .header-buttons {
                flex-direction: column; 
                align-items: center; 
            }
        }
    </style>

    <!-- JavaScript to reload the page after removing a product -->
    <script>
        function handleRemoveProduct(form) {
            if (confirm("Are you sure you want to remove this product?")) {
                form.submit();
                setTimeout(function() {
                    location.reload();
                }, 500); 
            }
            return false; 
        }
    </script>

</head>
<body>

<div class="profile-container">
    <h1>Seller Profile</h1>

    <!-- Display seller's details -->
    <c:forEach var="seller" items="${SellerDetails}">
        <div class="text-center mb-4">
            <p><strong>Name:</strong> ${seller.seller_name}</p>
            <p><strong>Email:</strong> ${seller.seller_email}</p>
            <p><strong>Phone:</strong> ${seller.seller_phone}</p>
        </div>
    </c:forEach>

    <!-- Header Box -->
    <div class="header-box">
        <div class="header-buttons">
            <form action="sellerorders" method="post">
                <input type="submit" value="View My Orders" class="btn btn-secondary"/>
            </form>
            <form action="SellerProfile" method="post">
                <button type="submit" class="btn btn-info icon-btn">
                    <i class="fas fa-user"></i> My Account
                </button>
            </form>
            <a href="addproduct.jsp" class="btn btn-primary">Add Product</a>
            <form action="login.jsp" method="post" style="display:inline;">
                <button type="submit" class="btn btn-danger">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </button>
            </form>
        </div>
    </div>

    <!-- Seller's Products -->
    <div class="row product-list">
        <h3>My Products</h3>
        
        <!-- Loop through products -->
        <c:forEach var="product" items="${SellerProducts}">
            <div class="col-md-4 col-sm-6 mb-4"> <!-- Set to col-md-4 for 3 in a row -->
                <div class="product-card">
                    <!-- Display product image -->
                    <img src="${product.productImage}" alt="${product.productName}" class="product-image" />
                    
                    <h5>${product.productName}</h5>
                    <p><strong>Price:</strong> $${product.productPrice}</p>
                    <p><strong>Quantity:</strong> ${product.quantity}</p>
                    <p><strong>Description:</strong> ${product.productDescription}</p>
                    <p><strong>Discount Price:</strong> $${product.discountPrice}</p>
                    <p><strong>Threshold:</strong> ${product.threshold}</p>
                    <p><strong>Category ID:</strong> ${product.categoryId}</p>
                    
                    <!-- Update and Remove Buttons -->
                    <div class="text-center mt-3">
                        <form action="editProduct" method="post" style="display:inline;">
                            <input type="hidden" name="productId" value="${product.product_id}" />
                            <button type="submit" class="btn btn-warning">
                                <i class="fas fa-edit"></i> Update
                            </button>
                        </form>
                        
                        <!-- Remove Button -->
                        <form action="RemoveProduct" method="post" style="display:inline;" onsubmit="return handleRemoveProduct(this);">
                            <input type="hidden" name="productId" value="${product.product_id}" />
                            <button type="submit" class="btn btn-danger">
                                <i class="fas fa-trash-alt"></i> Remove
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>

        <!-- Display message if no products found -->
        <c:if test="${empty SellerProducts}">
            <p class="text-center">No products added yet.</p>
        </c:if>
    </div>
</div>
</body>
</html>
