<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            text-align: center;
        }
        h1 {
            color: #d9534f;
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #d9534f;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Error</h1>
        <p>Sorry, an error occurred while processing your request.</p>
        <p>Please try again later or contact support.</p>
        <a href="success.jsp" class="btn">Go to Homepage</a>
    </div>
</body>
</html>
