<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @keyframes backgroundAnimation {
            0% { background-color: #f0f8ff; }
            50% { background-color: #e0f7fa; }
            100% { background-color: #f0f8ff; }
        }
        @keyframes buttonHoverAnimation {
            0% {
                background-color: #fff;
                color: #007bff;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
                transform: perspective(1500px) rotateX(0) rotateY(0) scale(1);
            }
            50% {
                background-color: #0056b3;
                color: #fff;
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
                transform: perspective(1500px) rotateX(15deg) rotateY(15deg) scale(1.1);
            }
            100% {
                background-color: #fff;
                color: #007bff;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
                transform: perspective(1500px) rotateX(0) rotateY(0) scale(1);
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
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
        .dashboard-info {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            display: inline-block;
            padding: 20px;
            margin-top: 30px;
            text-align: left;
            width: 300px; /* Adjust info box width */
        }
        .dashboard-info p {
            margin-bottom: 10px;
        }
        .nav-links {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 30px;
        }
        .nav-links a {
            text-decoration: none;
            color: #007bff;
            background: linear-gradient(145deg, #ffffff, #e0e0e0);
            border: 1px solid #007bff;
            padding: 15px 20px;
            margin: 10px 0;
            border-radius: 10px;
            transition: background 0.3s ease, color 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease, transform 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
            width: 250px; /* Adjust button width */
            perspective: 1000px;
        }
        .nav-links a::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            z-index: -1;
            transition: opacity 0.3s ease;
            opacity: 0;
        }
        .nav-links a:hover::before {
            opacity: 1;
        }
        .nav-links a:hover {
            color: #fff;
            background: linear-gradient(145deg, #007bff, #0056b3);
            border-color: #007bff;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            transform: perspective(1500px) rotateX(15deg) rotateY(15deg) scale(1.1);
            animation: buttonHoverAnimation 1s ease;
        }
        .fa {
            margin-right: 10px;
            font-size: 1.4em;
        }
    </style>
</head>
<body>
    <h2><i class="fa fa-user"></i>Welcome, Customer</h2>
    <div class="dashboard-info">
        <%
            String accountNo = (String) session.getAttribute("account_no");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "sanjay01");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE account_no=?");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.print("<p>Account No: " + rs.getString("account_no") + "</p>");
                out.print("<p>Balance: $" + rs.getDouble("initial_balance") + "</p>");
            }
        %>
    </div>
    <div class="nav-links">
        <a href="viewTransactions.jsp"><i class="fa fa-history"></i>View Transactions</a>
        <a href="deposit.jsp"><i class="fa fa-plus-circle"></i>Deposit</a>
        <a href="withdraw.jsp"><i class="fa fa-minus-circle"></i>Withdraw</a>
        <a href="closeAccount.jsp"><i class="fa fa-ban"></i>Close Account</a>
        <a href="logout.jsp"><i class="fa fa-sign-out-alt"></i>Logout</a>
    </div>
</body>
</html>
