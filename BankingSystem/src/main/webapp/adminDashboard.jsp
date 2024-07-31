<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <!-- Custom CSS for animations -->
    <style>
        body {
            background: radial-gradient(circle, rgba(0,0,0,0.8), rgba(0,0,0,0.6)), 
                        linear-gradient(135deg, #003366, #0066cc);
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
            background-size: 400% 400%;
            animation: backgroundAnimation 20s ease infinite;
        }

        @keyframes backgroundAnimation {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }

        h2 {
            margin-bottom: 30px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
            display: flex;
            align-items: center;
            font-size: 24px;
        }

        h2 i {
            margin-right: 10px;
            font-size: 30px;
            color: #fff;
            transition: color 0.3s ease;
        }

        h2:hover i {
            color: #ffa500; /* Color change on hover */
        }

        .button-container {
            text-align: center;
        }

        .btn-wrapper {
            perspective: 1000px;
        }

        a {
            display: inline-block;
            margin: 15px;
            padding: 15px 35px;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            font-size: 16px;
            position: relative;
            overflow: hidden;
            transition: all 0.3s ease-in-out;
            font-weight: bold;
            text-transform: uppercase;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            background: linear-gradient(135deg, #fff, #fff) padding-box, 
                        linear-gradient(135deg, #28a745, #218838) border-box;
            border: 2px solid transparent;
            transform-style: preserve-3d;
        }

        a::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.2);
            transition: transform 0.4s ease-in-out;
            transform: translate(-50%, -50%) scale(0.5);
            border-radius: 50%;
            z-index: 0;
        }

        a:hover {
            transform: rotateX(15deg) rotateY(15deg) scale(1.1);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
            background-color: #218838;
        }

        a:hover::before {
            transform: translate(-50%, -50%) scale(1.5);
        }

        a:active {
            transform: rotateX(0deg) rotateY(0deg) scale(0.95);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
        }

        a i {
            margin-right: 10px;
            font-size: 20px;
            vertical-align: middle;
            transition: color 0.3s ease;
        }

        a:hover i {
            color: #fff;
        }

        .register-btn {
            background: linear-gradient(135deg, #28a745, #218838);
            border: 2px solid transparent;
            background-size: 200% 200%;
            animation: gradientAnimation 5s ease infinite;
        }

        .list-btn {
            background: linear-gradient(135deg, #FFA62F, #FF8C00);
            border: 2px solid transparent;
            background-size: 200% 200%;
            animation: gradientAnimation 5s ease infinite;
        }

        .view-btn {
            background: linear-gradient(135deg, #17a2b8, #138496);
            border: 2px solid transparent;
            background-size: 200% 200%;
            animation: gradientAnimation 5s ease infinite;
        }

        .logout-btn {
            background: linear-gradient(135deg, #dc3545, #c82333);
            border: 2px solid transparent;
            background-size: 200% 200%;
            animation: gradientAnimation 5s ease infinite;
        }

        @keyframes gradientAnimation {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }
    </style>
</head>
<body>
    <div class="button-container">
        <h2><i class="fas fa-tachometer-alt"></i> Welcome, <%= session.getAttribute("username") %></h2>
        <div class="btn-wrapper">
            <a href="registerCustomer.jsp" class="register-btn"><i class="fas fa-user-plus"></i> Register Customer</a>
        </div>
        <div class="btn-wrapper">
            <a href="listCustomer.jsp" class="list-btn"><i class="fas fa-list"></i> List Customer</a>
        </div>
      <!--<div class="btn-wrapper">
            <a href="viewCustomers.jsp" class="view-btn"><i class="fas fa-eye"></i> View Customers</a>
        </div>-->
        <div class="btn-wrapper">
            <a href="logout.jsp" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>
</body>
</html>
