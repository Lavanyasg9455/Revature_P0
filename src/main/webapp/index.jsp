<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RevShop - Your Online Store</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* General Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 700;
            color: #ff6b6b !important;
            display: flex;
            align-items: center;
        }

        .navbar-brand img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        .navbar-nav .nav-link {
            color: #333 !important;
            font-family: 'Roboto', sans-serif;
            font-weight: 500;
            margin-right: 15px;
            transition: color 0.3s, font-weight 0.3s;
        }

        .navbar-nav .nav-link:hover {
            color: #ff6b6b !important;
            font-weight: 700;
        }

        /* Carousel Styles */
        .carousel-item img {
            width: 100%;
            height: 75vh;
            object-fit: cover;
        }

        .carousel-inner img {
            max-height: 75vh;
        }

        .carousel-item {
            transition: transform 0.5s ease-in-out;
        }

        /* Categories Section */
        .categories-section {
            padding: 50px 0;
            background-color: #fff;
        }

        .categories-section h2 {
            font-weight: 700;
            margin-bottom: 30px;
        }

        .category-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            background-color: white;
            transition: transform 0.3s;
            height: 100%;
        }

        .category-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .category-card h5 {
            padding: 15px;
            font-size: 20px;
            font-weight: 500;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        /* Footer */
        footer {
            background-color: #ffffff;
            color: #333;
            padding: 20px;
            text-align: center;
            border-top: 1px solid #ddd;
        }

        footer a {
            color: #ff6b6b;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Media Queries */
        @media (max-width: 768px) {
            .carousel-item img {
                height: 60vh;
            }

            .category-card h5 {
                font-size: 18px;
            }
        }

        @media (max-width: 576px) {
            .carousel-item img {
                height: 50vh;
            }

            .category-card h5 {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="https://image.shutterstock.com/image-vector/shopping-cart-icon-vector-260nw-1017998576.jpg" alt="Logo">
                RevShop
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registrationform.jsp">Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Carousel Section -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=600" class="d-block w-100" alt="Electronics">
            </div>
            <div class="carousel-item">
                <img src="https://images.pexels.com/photos/1006293/pexels-photo-1006293.jpeg?auto=compress&cs=tinysrgb&w=600" class="d-block w-100" alt="Fashion">
            </div>
            <div class="carousel-item">
                <img src="https://images.pexels.com/photos/3769747/pexels-photo-3769747.jpeg?auto=compress&cs=tinysrgb&w=600" class="d-block w-100" alt="Shoes Sale">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Categories Section -->
    <div class="categories-section">
        <div class="container">
            <h2 class="text-center">Explore Our Categories</h2>
            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="category-card">
                        <img src="https://images.pexels.com/photos/62689/pexels-photo-62689.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Electronics">
                        <h5 class="text-center">Electronics</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="category-card">
                        <img src="https://images.pexels.com/photos/1148957/pexels-photo-1148957.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Fashion & Clothing">
                        <h5 class="text-center">Fashion & Clothing</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="category-card">
                        <img src="https://images.pexels.com/photos/168866/pexels-photo-168866.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Toys">
                        <h5 class="text-center">Toys & Games</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 RevShop | <a href="contact.jsp">Contact Us</a></p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script>
        const carousel = document.querySelector('#carouselExampleIndicators');
        const carousel
