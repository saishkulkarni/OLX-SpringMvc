<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>OLX Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px;
        }
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 200px;
            border-radius: 5px;
        }
        button:hover {
            background-color: #2980b9;
        }
        .message {
            background-color: #e74c3c;
            color: white;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <% if (request.getAttribute("msg") != null) { %>
        <div class="message">${msg}</div>
    <% } %>

    <h1>Welcome to JSP OLX Home</h1>

    <div class="button-container">
        <% if (session.getAttribute("customer") == null) { %>
            <a href="Login.jsp"><button>Login</button></a>
            <a href="load"><button>Signup</button></a>
        <% } %>

        <a href="displayproducts"><button>Buy</button></a>

        <% if (session.getAttribute("customer") != null) { %>
            <a href="AddProduct.jsp"><button>Sell</button></a>
            <a href="AddMoney.jsp"><button>Add Money to Wallet</button></a>
            <a href="logout"><button>Logout</button></a>
        <% } %>
    </div>
</body>
</html>
