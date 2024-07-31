<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Transactions</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @keyframes backgroundAnimation {  
            0% { background-color: #f0f8ff; }
            50% { background-color: #e0f7fa; }
            100% { background-color: #f0f8ff; }
        }
        @keyframes buttonHoverAnimation {
            0% {
                background: linear-gradient(145deg, #007bff, #0056b3);
                color: #fff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), inset 0 -3px 6px rgba(0, 0, 0, 0.2);
                transform: perspective(1000px) rotateX(0) rotateY(0) scale(1);
            }
            50% {
                background: linear-gradient(145deg, #0056b3, #003d7a);
                color: #fff;
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4), inset 0 -6px 12px rgba(0, 0, 0, 0.3);
                transform: perspective(1000px) rotateX(10deg) rotateY(10deg) scale(1.1);
            }
            100% {
                background: linear-gradient(145deg, #007bff, #0056b3);
                color: #fff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), inset 0 -3px 6px rgba(0, 0, 0, 0.2);
                transform: perspective(1000px) rotateX(0) rotateY(0) scale(1);
            }
        }
        body {
            font-family: Arial, sans-serif;
            animation: backgroundAnimation 10s infinite alternate;
            text-align: center;
            padding: 50px;
            background: linear-gradient(135deg, #f0f8ff, #e0f7fa);
        }
        h2 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        .transaction {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 15px;
            margin: 10px auto;
            max-width: 500px;
            text-align: left;
        }
        .transaction p {
            margin: 5px 0;
        }
        .back-link, .download-link {
            text-decoration: none;
            color: #fff;
            background: linear-gradient(145deg, #007bff, #0056b3);
            border: none;
            padding: 12px 24px;
            border-radius: 10px;
            font-size: 1.2em;
            display: inline-block;
            margin: 10px 5px;
            transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
            perspective: 1000px;
        }
        .back-link::before, .download-link::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            transform: scaleX(0) scaleY(0);
            transition: transform 0.3s ease;
            z-index: 0;
        }
        .back-link::after, .download-link::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            transform: scaleX(0) scaleY(0);
            transition: transform 0.3s ease;
            z-index: 0;
        }
        .back-link:hover::before, .download-link:hover::before {
            transform: scaleX(1) scaleY(1);
        }
        .back-link:hover::after, .download-link:hover::after {
            transform: scaleX(1) scaleY(1);
        }
        .back-link:hover, .download-link:hover {
            background: linear-gradient(145deg, #0056b3, #003d7a);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4), inset 0 -6px 12px rgba(0, 0, 0, 0.3);
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
    <h2><i class="fa fa-history"></i>Last 10 Transactions</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "sanjay01");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transactions WHERE customer_id=(SELECT customer_id FROM customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
        <div class="transaction">
            <p><strong>Date:</strong> <%= rs.getTimestamp("transaction_date") %></p>
            <p><strong>Amount:</strong> <%= rs.getDouble("amount") %></p>
            <p><strong>Type:</strong> <%= rs.getString("transaction_type") %></p>
        </div>
    <%
        }
    %>
    <a href="viewCustomers.jsp" class="back-link"><i class="fa fa-arrow-left"></i>Back to Dashboard</a>
    <a href="DownloadPDFServlet" class="download-link"><i class="fa fa-file-pdf"></i>Download Transactions as PDF</a>
</body>
</html>
