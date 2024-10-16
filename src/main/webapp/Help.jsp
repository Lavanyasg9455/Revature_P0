<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help Center - RevShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #d0e8d0; /* Light green background */
            color: #2e7d32; /* Dark green text */
            margin: 0;
        }
        
        .header {
            background-color: #66bb6a; /* Light green */
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .footer {
            background-color: #2e7d32; /* Dark green */
            color: white;
            padding: 15px;
            text-align: center;
            margin-top: 30px;
        }

        .footer a {
            color: #aed581; /* Light yellow-green color for links */
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        h2 {
            margin-top: 30px;
            color: #388e3c; /* Medium green */
        }

        .accordion-button {
            background-color: #66bb6a; /* Light green for accordion button */
            color: white;
        }

        .accordion-button:not(.collapsed) {
            background-color: #388e3c; /* Darker green when active */
            color: white;
        }

        .accordion-item {
            border: 1px solid #66bb6a; /* Green border for accordion items */
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h1>Help Center</h1>
        <p>Your assistance hub for a smooth shopping experience</p>
    </div>

    <!-- Content Section -->
    <div class="container">
        <h2 style="color: #2e7d32;">How to Handle Troubles</h2>

        <p>Here you will find answers to common issues and queries. Please refer to the topics below for more information.</p>

        <!-- Order Issues -->
        <div class="accordion" id="orderIssuesAccordion">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Order Issues
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#orderIssuesAccordion">
                    <div class="accordion-body">
                        <ol>
                            <li>Check Order Status: Log in to your account and navigate to the "My Orders" section...</li>
                            <li>Review Order Confirmation Email: Look for the order confirmation email...</li>
                            <li>Contact Customer Support: If there are discrepancies...</li>
                            <li>Cancel or Modify Your Order: If your order is still processing...</li>
                            <li>Await Resolution: After reporting your issue...</li>
                        </ol>
                    </div>
                </div>
            </div>
            
            <!-- Payment Problems -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Payment Problems
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#orderIssuesAccordion">
                    <div class="accordion-body">
                        <ol>
                            <li>Verify Payment Information: Ensure that your payment information is entered correctly...</li>
                            <li>Check Account Balance: Make sure that your account has sufficient funds...</li>
                            <li>Review Payment Method: If you are using a debit/credit card...</li>
                            <li>Contact Your Bank or Payment Provider: If you continue to experience issues...</li>
                            <li>Contact Customer Support: If the issue persists...</li>
                        </ol>
                    </div>
                </div>
            </div>

            <!-- Return and Refunds -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Returns and Refunds
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#orderIssuesAccordion">
                    <div class="accordion-body">
                        <ol>
                            <li>Review Return Policy: Familiarize yourself with our return policy...</li>
                            <li>Initiate Return Process: If eligible, log into your account...</li>
                            <li>Prepare the Item for Return: Ensure the item is in its original condition...</li>
                            <li>Ship the Item Back: Follow the instructions provided...</li>
                            <li>Await Refund Processing: After we receive the returned item...</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 RevShop | Contact Us:</p>
        <p>Phone: <strong>(123) 456-7890</strong></p>
        <p>Email: <strong><a href="mailto:support@revshop.com">support@revshop.com</a></strong></p>
        <p>Website: <strong><a href="https://www.revshop.com">www.revshop.com</a></strong></p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
