<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div class="login-container">
    <form method="post" action="LoginServlet" class="login-form">
        <h2>Login</h2>
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="txtname" id="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="pwd" id="password" required>
        </div>
        <button type="submit" name="login">Login</button>
    </form>
</div>
</body>
</html>
