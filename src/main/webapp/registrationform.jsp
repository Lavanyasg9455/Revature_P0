<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<script src="registration.js" defer></script>

<style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url(https://img.freepik.com/free-photo/pieces-blue-stationery_23-2148169528.jpg?w=826&t=st=1728362360~exp=1728362960~hmac=1ec46941cb374774f9b96d4cf1f0bbae02d23e616e9aae083c8a4a984a701865); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
            font-size: 2.2rem;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Light background to make form readable */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            position: relative;
        }

        label {
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
            font-size: 1.1rem;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="radio"] {
            margin-right: 8px;
        }

        div.radio-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1.2rem;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            text-align: center;
            color: #007bff;
            font-size: 1rem;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }

        #buyerFields, #sellerFields {
            display: none; /* Initially hide these fields */
        }

    </style>


</head>
<body>
<form method="post" action="RegistrationController">
        <h1>Registration Form</h1>  
  <label>Enter Your Name</label>
  <input type="text" name="username" placeholder="Enter your name" required>
  
  <label>Enter Your Email</label>
  <input type="email" name="email" placeholder="Enter your email" required>
  
  <label>Enter Your Password</label>
  <input type="password" name="password" placeholder="Enter your password" required>
  
  <label>Enter Your Mobile Number</label>
  <input type="number" name="mobilenumber" placeholder="Enter your mobile number" required>
  
  <label>Choose Your Role</label>
  <div>
    <label><input type="radio" value="seller" name="role" onclick="fun2()"> Seller</label>
    <label><input type="radio" value="buyer" name="role" onclick="fun1()"> Buyer</label>
  </div>

  <input type="submit" value="Register" onclick="fun3()"/>
</form>
</body>
</html>
