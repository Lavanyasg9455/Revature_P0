<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
            background-image: url('data:image/jpeg;base64,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'); 
            background-size: cover;
            background-attachment: fixed;
        }

        .form-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: white; /* Slightly transparent white */
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #343a40;
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            color: #495057;
        }

        .form-control {
            border-radius: 8px;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #80bdff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.25);
        }

        textarea.form-control {
            resize: none;
            height: 100px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .btn {
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #218838;
        }

        .info-text {
            font-size: 14px;
            color: #6c757d;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Add Product</h1>
    <form action="ProductController" method="POST">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" class="form-control" name="productname" required/>
                </div>

                <div class="form-group">
                    <label>Product Price</label>
                    <input type="number" class="form-control" name="price" required/>
                </div>

                <div class="form-group">
                    <label>Product Image (URL)</label>
                    <input type="url" class="form-control" name="image" required/>
                </div>

                <div class="form-group">
                    <label>Discount Price</label>
                    <input type="number" class="form-control" name="discount_price"/>
                </div>

                <div class="form-group">
                    <label>Quantity</label>
                    <input type="number" class="form-control" name="quantity" required/>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Product Description</label>
                    <textarea class="form-control" name="description" required></textarea>
                </div>

                <div class="form-group">
                    <label>Threshold</label>
                    <input type="number" class="form-control" name="threshold" required/>
                </div>

                <div class="form-group">
                    <label>Category ID</label>
                    <input type="number" class="form-control" name="category_id" required/>
                </div>

                <div class="info-text">
                    <p>1. Enter category id 1 for electronic gadgets</p>
                    <p>2. Enter category id 2 for Toys</p>
                    <p>3. Enter category id 3 for Home</p>
                    <p>4. Enter category id 4 for Cloths</p>
                </div>
            </div>
        </div>

        <button type="submit" class="btn">Add Product</button>
    </form>
</div>

</body>
</html>
