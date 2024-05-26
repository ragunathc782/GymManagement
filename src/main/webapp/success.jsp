<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Management System</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        .content {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }
        .menu {
            width: 250px;
            background-color: #f0f0f0;
            padding: 20px;
            border-right: 1px solid #ccc;
        }
        .menu ul {
            list-style-type: none;
            padding: 0;
        }
        .menu li {
            margin-bottom: 10px;
        }
        .menu a {
            text-decoration: none;
            color: #333;
        }
        .menu a:hover {
            color: #555;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Gym Management System</h1>
    </div>
    <div class="container">
        <div class="content">
            <div class="menu">
                <h2>Menu</h2>
                <ul>
                    <li><a href="success.jsp">Dashboard</a></li>
                    <li><a href="member.jsp">Add Members</a></li>
                    <li><a href="classes.jsp">Classes</a></li>
                    <li><a href="Trainers.jsp">Trainers</a></li>
                    <li><a href="Login.jsp">Logout</a></li>
                    <!-- Add more menu items as needed -->
                </ul>
            </div>
            <div class="main-content">
                <h2>Welcome to Gym Management System</h2>
                <p>Welcome to FIT X, where fitness meets community. Join us to unleash your potential with expert trainers and diverse classes. Start your journey today for a stronger, fitter you!.</p>
            </div>
        </div>
    </div>
</body>
</html>
