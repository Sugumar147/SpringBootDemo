<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>OTP Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .otp-form {
            display: flex;
            flex-direction: column;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
            color: #666;
        }
        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        // Disable caching to prevent showing the page when clicking back button
        window.onload = function() {
            window.history.pushState({}, '', '/');
            window.onpopstate = function(event) {
                window.history.pushState({}, '', '/');
            };
        };
    </script>
</head>
<body>
    <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
    <div class="container">
        <h2>OTP Confirmation</h2>
        <div class="otp-form">
            <form action="validate-otp" method="post">
                <div class="form-group">
                    <label for="otp">Enter OTP:</label>
                    <input type="text" id="otp" name="otp" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Submit">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
