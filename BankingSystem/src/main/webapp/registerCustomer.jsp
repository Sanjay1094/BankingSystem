<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #f0f8ff, #dfefff);
            text-align: center;
            padding: 50px;
            animation: backgroundAnimation 10s infinite alternate;
        }
        @keyframes backgroundAnimation {
            0% { background-color: #f0f8ff; }
            100% { background-color: #dfefff; }
        }
        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
            text-align: center;
            width: 100%;
        }
        h2::after {
            content: "\f02e";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            right: -30px;
            top: 0;
            color: #007bff;
            animation: bounce 2s infinite;
        }
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
            40% { transform: translateY(-10px); }
            60% { transform: translateY(-5px); }
        }
        form {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            display: inline-block;
            padding: 30px;
            margin-top: 30px;
            text-align: left;
            width: 400px; 
            animation: formFadeIn 1s ease-in-out;
        }
        @keyframes formFadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 1.1em;
            color: #555;
        }
        .input-container {
            position: relative;
            margin-bottom: 15px;
        }
        .input-container i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #007bff;
        }
        .input-container input[type="text"],
        .input-container input[type="date"],
        .input-container textarea,
        .input-container select {
            width: calc(100% - 40px); 
            padding: 10px 10px 10px 30px;
            margin-bottom: 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            background-color: #e9f5ff;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .input-container input[type="text"]:focus,
        .input-container input[type="date"]:focus,
        .input-container textarea:focus,
        .input-container select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.5);
            outline: none;
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
            transition: background-color 0.3s ease, transform 0.2s ease;
            border: none;
            font-size: 1.2em;
            position: relative;
            overflow: hidden;
        }
        input[type="submit"]::before {
            content: "\f1d8";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            left: -30px;
            top: 50%;
            transform: translateY(-50%);
        }
        input[type="submit"]:hover {
            background-color: #218838;
            transform: translateY(-3px);
        }
        input[type="submit"]::after {
            content: "";
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.3);
            transition: all 0.3s;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
        }
        input[type="submit"]:hover::after {
            transform: translate(-50%, -50%) scale(1);
        }
    </style>
</head>
<body>
    <h2>Register Customer</h2>
    <form action="RegisterCustomerServlet" method="post">
        <div class="input-container">
            <i class="fas fa-user"></i>
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name">
        </div>
        <div class="input-container">
            <i class="fas fa-map-marker-alt"></i>
            <label for="address">Address:</label>
            <textarea id="address" name="address"></textarea>
        </div>
        <div class="input-container">
            <i class="fas fa-phone"></i>
            <label for="mobile_no">Mobile No:</label>
            <input type="text" id="mobile_no" name="mobile_no">
        </div>
        <div class="input-container">
            <i class="fas fa-envelope"></i>
            <label for="email_id">Email ID:</label>
            <input type="text" id="email_id" name="email_id">
        </div>
        <div class="input-container">
            <i class="fas fa-piggy-bank"></i>
            <label for="account_type">Account Type:</label>
            <select id="account_type" name="account_type">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select>
        </div>
        <div class="input-container">
            <i class="fas fa-money-bill-wave"></i>
            <label for="initial_balance">Initial Balance:</label>
            <input type="text" id="initial_balance" name="initial_balance">
        </div>
        <div class="input-container">
            <i class="fas fa-calendar-alt"></i>
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="date_of_birth">
        </div>
        <div class="input-container">
            <i class="fas fa-id-card"></i>
            <label for="id_proof">ID Proof:</label>
            <input type="text" id="id_proof" name="id_proof">
        </div>
        <input type="submit" value="Register">
    </form>
</body>
</html>
