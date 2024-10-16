<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>My Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
    <style>
        /* Full Height for HTML and Body */
        html, body {
            height: 100%;
            margin: 0;
        }

        /* General Body Styling */
        body {
            background-color: #e9ecef; /* Light grey background */
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
        }

        /* Container Styling */
        .container {
            flex: 1;
            display: flex;
            flex-direction: column;
            max-width: 800px; /* Limiting max width for better readability */
            padding: 20px;
            margin: auto; /* Center the container */
        }

        /* Profile Header Styling */
        .profile-header {
            background-color: #003366 ; /* Bootstrap primary color */
            color: white;
            padding: 20px;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .profile-header h1 {
            font-size: 2rem;
            margin: 0;
        }

        .profile-header i {
            margin-right: 10px;
            font-size: 2rem;
        }

        .profile-header .btn {
            color: white;
            background-color: transparent;
            border: none;
            font-size: 1rem;
        }

        /* Profile Card Styling */
        .profile-card {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .profile-info {
            margin-bottom: 20px;
        }

        .profile-info p {
            font-size: 1rem;
            margin: 10px 0;
        }

        /* Form Styling */
        .form-control {
            border: none;
            border-bottom: 2px solid #007bff;
            border-radius: 0;
            height: 40px;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 0.95rem;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-bottom: 2px solid #0056b3; /* Darker blue on focus */
            box-shadow: none;
        }

        /* Button Styling */
        .btn-primary {
            background-color: #007bff; /* Bootstrap primary color */
            border: none;
            border-radius: 30px;
            padding: 10px 20px;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Responsive Media Queries */
        @media (max-width: 768px) {
            .profile-header {
                flex-direction: column;
                align-items: flex-start;
            }

            .profile-header h1 {
                font-size: 1.5rem;
            }

            .container {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <div class="container">
        <div class="profile-header">
            <div>
                <i class="fas fa-user-circle"></i>
                <h1>My Profile</h1>
            </div>
            <div>
                <a href="myorders.jsp" class="btn">
                    <i class="fas fa-box"></i> My Orders
                </a>
                <a href="login.jsp" class="btn">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </div>
        </div>

        <!-- Profile Card Section -->
        <div class="profile-card">
            <h3 class="mb-4">Profile Information</h3>
            <jsp:useBean id="buyerDetails" type="dto.BuyerDto" scope="session" />

            <!-- Display Profile Information -->
            <div class="profile-info">
                <p><strong>Email:</strong> ${buyerDetails.b_email}</p>
                <p><strong>Name:</strong> ${buyerDetails.b_name}</p>
                <p><strong>Phone:</strong> ${buyerDetails.b_number}</p>
                <p><strong>Address:</strong> ${buyerDetails.b_address}</p>
            </div>

            <!-- Form to Update Profile Details -->
            <form action="updateProfile" method="post">
                <input type="hidden" name="email" value="${buyerDetails.b_email}" />

                <div class="form-group">
                    <input type="text" class="form-control" id="name" name="name" value="${buyerDetails.b_name}" placeholder="Update Name" required />
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" id="number" name="number" value="${buyerDetails.b_number}" placeholder="Update Phone" required />
                </div>

                <div class="form-group">
                    <input type="email" class="form-control" id="email" name="new_email" value="${buyerDetails.b_email}" placeholder="Update Email" required />
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Change Password" required />
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" id="address" name="address" value="${buyerDetails.b_address}" placeholder="Update Address" required />
                </div>

                <button type="submit" class="btn btn-primary btn-block">Update Profile</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
