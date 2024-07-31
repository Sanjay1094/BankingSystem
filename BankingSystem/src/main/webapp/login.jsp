<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @keyframes backgroundAnimation {
            0% { background-color: #f0f8ff; }
            50% { background-color: #e0f7fa; }
            100% { background-color: #f0f8ff; }
        }
        @keyframes buttonAnimation {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }
        @keyframes buttonHoverAnimation {
            0% {
                background-color: #28a745;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border: none;
            }
            50% {
                background-color: #218838;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
                border: 2px solid #1e7e34;
            }
            100% {
                background-color: #28a745;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border: none;
            }
        }
        body {
            font-family: Arial, sans-serif;
            animation: backgroundAnimation 10s infinite alternate;
            text-align: center;
            padding: 50px;
        }
        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        form {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            display: inline-block;
            padding: 20px;
            margin-top: 30px;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px); /* Adjust for padding */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #28a745;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease, box-shadow 0.3s ease, border 0.3s ease;
            border: none;
            font-size: 1em;
            animation: buttonAnimation 2s infinite alternate;
        }
        input[type="submit"]:hover {
            animation: buttonHoverAnimation 0.5s forwards;
        }
        .fa-user, .fa-lock {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <h2>Admin Login</h2>
    <form action="AdminLoginServlet" method="post">
        <label for="username"><i class="fa fa-user"></i>Username:</label>
        <input type="text" id="username" name="username" style="background-color: #e9f5ff;"><br><br>
        <label for="password"><i class="fa fa-lock"></i>Password:</label>
        <input type="password" id="password" name="password" style="background-color: #e9f5ff;"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
