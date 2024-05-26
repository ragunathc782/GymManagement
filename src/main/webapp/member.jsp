<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Member</title>
</head>
<body>
    <h2>Add Member</h2>
    <form action="MemberServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required><br><br>
        
        <label for="joinDate">Date of Joining:</label>
        <input type="date" id="joinDate" name="joinDate" required><br><br>
        
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required><br><br>
        
        <input type="submit" value="Add Member">
    </form>
</body>
</html>
