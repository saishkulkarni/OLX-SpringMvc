<%@page import="mvc_olx.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Money to Wallet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .balance {
            font-size: 18px;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }
        input[type="number"] {
            flex-grow: 1;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border-radius: 4px;
        }
        button:hover {
            background-color: #2980b9;
        }
        .home-button {
            display: block;
            width: 100%;
            text-align: center;
        }
        .error-message {
            background-color: #e74c3c;
            color: white;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <%
    Customer customer = (Customer)session.getAttribute("customer");
    if(customer == null) {
    %>
        <div class="error-message">
            <h1>Invalid Session</h1>
        </div>
        <% request.getRequestDispatcher("Home.jsp").include(request, response); %>
    <% } else { %>
        <div class="container">
            <h1>Add Money to Wallet</h1>
            <div class="balance">Current Balance: $<%= String.format("%.2f", customer.getWallet()) %></div>
            <form action="addmoney">
                <input type="number" name="money" step="0.01" min="0" placeholder="Enter amount" required>
                <button type="submit">Add</button>
            </form>
            <a href="Home.jsp" class="home-button"><button>Home</button></a>
        </div>
    <% } %>
</body>
</html>
