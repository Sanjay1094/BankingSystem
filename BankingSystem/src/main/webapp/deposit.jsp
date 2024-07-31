<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @keyframes buttonHoverAnimation {
            0% {
                background: linear-gradient(145deg, #28a745, #1e7e34);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), inset 0 -3px 6px rgba(0, 0, 0, 0.2);
                transform: perspective(1000px) rotateX(0) rotateY(0) scale(1);
            }
            50% {
                background: linear-gradient(145deg, #1e7e34, #155d27);
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4), inset 0 -6px 12px rgba(0, 0, 0, 0.3);
                transform: perspective(1000px) rotateX(10deg) rotateY(10deg) scale(1.1);
            }
            100% {
                background: linear-gradient(145deg, #28a745, #1e7e34);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), inset 0 -3px 6px rgba(0, 0, 0, 0.2);
                transform: perspective(1000px) rotateX(0) rotateY(0) scale(1);
            }
        }
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background: linear-gradient(135deg, #f0f8ff, #e0f7fa);
        }
        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        form {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            padding: 20px;
            margin-top: 30px;
            text-align: left;
            width: 300px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #e9f5ff;
        }
        input[type="submit"] {
            text-decoration: none;
            color: #fff;
            background: linear-gradient(145deg, #28a745, #1e7e34);
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 1.1em;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
            perspective: 1000px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        input[type="submit"]::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            transform: scaleX(0) scaleY(0);
            transition: transform 0.3s ease;
            z-index: 0;
        }
        input[type="submit"]::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            transform: scaleX(0) scaleY(0);
            transition: transform 0.3s ease;
            z-index: 0;
        }
        input[type="submit"]:hover::before {
            transform: scaleX(1) scaleY(1);
        }
        input[type="submit"]:hover::after {
            transform: scaleX(1) scaleY(1);
        }
        input[type="submit"]:hover {
            background: linear-gradient(145deg, #1e7e34, #155d27);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            transform: perspective(1000px) rotateX(10deg) rotateY(10deg) scale(1.1);
            animation: buttonHoverAnimation 0.6s ease;
        }
        .fa {
            color: #fff;
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <h2><i class="fa fa-dollar-sign"></i>Deposit Amount</h2>
    <form action="DepositServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount"><br><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>