<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Review</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-weight: bold;
            font-size: 1.8rem;
        }

        .stars {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .stars input {
            display: none;
        }

        .stars label {
            font-size: 40px;
            color: #ccc;
            cursor: pointer;
            transition: transform 0.2s ease, color 0.2s ease;
        }

        .stars input:checked ~ label {
            color: #ffcc00;
        }

        .stars label:hover,
        .stars label:hover ~ label {
            color: #ffcc00;
        }

        .stars label:hover {
            transform: scale(1.2);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            resize: none;
            transition: border-color 0.3s ease;
        }

        .form-group textarea:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.2rem;
            font-weight: bold;
            transition: background-color 0.4s ease, transform 0.2s;
            margin-bottom: 10px;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        .continue-btn {
            background-color: #28a745;
        }

        .continue-btn:hover {
            background-color: #218838;
        }

        .thankyou-message {
            text-align: center;
            margin-top: 20px;
            color: #28a745;
            font-weight: bold;
            font-size: 1.1rem;
            animation: slideIn 0.5s ease;
        }

        @keyframes slideIn {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Rate Your Experience</h2>

        <!-- Star Rating Form -->
        <form method="post">
            <div class="stars">
                <input type="radio" id="star5" name="rating" value="5" required>
                <label for="star5" title="5 stars">&#9733;</label>
                <input type="radio" id="star4" name="rating" value="4">
                <label for="star4" title="4 stars">&#9733;</label>
                <input type="radio" id="star3" name="rating" value="3">
                <label for="star3" title="3 stars">&#9733;</label>
                <input type="radio" id="star2" name="rating" value="2">
                <label for="star2" title="2 stars">&#9733;</label>
                <input type="radio" id="star1" name="rating" value="1">
                <label for="star1" title="1 star">&#9733;</label>
            </div>

            <!-- Feedback Text -->
            <div class="form-group">
                <label for="feedback">Leave your feedback (optional):</label>
                <textarea id="feedback" name="feedback" rows="4" placeholder="Write your feedback here..."></textarea>
            </div>

            <!-- Submit Feedback Button -->
            <button type="submit" class="btn">Submit Feedback</button>
        </form>

        <!-- Continue Shopping Button -->
        <form action="continueShopping" method="post">
        <button type="submit" class="btn">Continue Shopping</button>
    </form>

        <!-- Display Thank You Message After Submission -->
        <% 
            String rating = request.getParameter("rating");
            if (rating != null) { 
        %>
        <div class="thankyou-message">
            Thank you for your feedback! You rated us <strong><%= rating %> stars</strong>.
        </div>
        <% } %>
    </div>

</body>
</html>
