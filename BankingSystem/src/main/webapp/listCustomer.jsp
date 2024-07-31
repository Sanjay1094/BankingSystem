<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f0f2f5, #c2e0ff);
            color: #333;
            margin: 0;
            padding: 20px;
            overflow-x: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
        }

        h2 {
            color: #4CAF50;
            margin-bottom: 20px;
            font-size: 2rem;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
            transition: background-color 0.3s ease;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #ddd;
        }

        .icon-button {
            background: #007bff;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            margin: 0 auto;
            transform-style: preserve-3d;
        }

        .icon-button::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.3);
            transition: transform 0.4s ease;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
            z-index: 0;
        }

        .icon-button:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        .icon-button:hover {
            background: #0056b3;
            transform: perspective(1000px) rotateX(15deg) rotateY(15deg) scale(1.1);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .icon-button:active {
            transform: perspective(1000px) rotateX(10deg) rotateY(10deg) scale(0.95);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        .icon-button i {
            margin-right: 6px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-users"></i> Customer List</h2>
        <table>
            <tr>
                <th>Customer ID</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Mobile No</th>
                <th>Email ID</th>
                <th>Account Type</th>
                <th>Initial Balance</th>
                <th>Date of Birth</th>
                <th>Account No</th>
            </tr>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "sanjay01");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM customer");
                    
                    while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getInt("customer_id") %></td>
                    <td><%= rs.getString("full_name") %></td>
                    <td><%= rs.getString("address") %></td>
                    <td><%= rs.getString("mobile_no") %></td>
                    <td><%= rs.getString("email_id") %></td>
                    <td><%= rs.getString("account_type") %></td>
                    <td><%= rs.getDouble("initial_balance") %></td>
                    <td><%= rs.getDate("dob") %></td>
                    <td><%= rs.getString("account_no") %></td>
                </tr>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        <a href="adminDashboard.jsp" class="icon-button"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
    </div>
</body>
</html>
