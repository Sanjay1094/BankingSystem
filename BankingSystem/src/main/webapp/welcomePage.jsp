<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<!-- Include Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        text-align: center;
        padding: 50px;
        background: linear-gradient(135deg, #f0f8ff, #d4e1f4);
        background-size: 200% 200%;
        animation: gradientAnimation 15s ease infinite;
    }
    
    @keyframes gradientAnimation {
        0% { background-position: 0% 0%; }
        50% { background-position: 100% 100%; }
        100% { background-position: 0% 0%; }
    }
    
    h2 {
        color: #333;
        font-size: 2.5em;
        margin-bottom: 20px;
    }
    
    div {
        background-color: #fff;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        display: inline-block;
        padding: 20px;
        margin-top: 30px;
    }
    
    a {
        display: inline-block;
        text-decoration: none;
        color: white;
        background-color: #007bff;
        padding: 12px 24px;
        border-radius: 10px;
        margin: 10px 0;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        font-size: 1.2em;
        position: relative;
        overflow: hidden;
        font-weight: bold;
    }

    a i {
        margin-right: 8px;
    }

    a::before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 300%;
        height: 300%;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        transition: transform 0.6s ease;
        transform: translate(-50%, -50%) scale(0);
        z-index: 0;
    }

    a:hover::before {
        transform: translate(-50%, -50%) scale(1);
    }

    a:hover {
        background-color: #0056b3;
        transform: scale(1.1) translateY(-5px);
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    }

    a:hover i {
        animation: bounce 0.5s ease infinite;
    }

    @keyframes bounce {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(-10px); }
    }
</style>
</head>
<body>
<h2>Welcome to BankingSystem</h2>
<div>
    <a href="login.jsp" target="_blank" style="background-color: #28a745;">
        <i class="fas fa-user-shield"></i> Admin Page
    </a><br>
    <a href="customerLogin.jsp" target="_blank" style="background-color: #dc3545;">
        <i class="fas fa-user"></i> Customer Page
    </a>
</div>
</body>
</html>
