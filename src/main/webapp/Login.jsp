<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: bold;
        }
        input[type="number"], input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
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
        button[type="reset"] {
            background-color: #e74c3c;
        }
        button[type="reset"]:hover {
            background-color: #c0392b;
        }
        .home-button {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 20px;
        }
        .message {
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
    <div class="container">
        <h1>Login</h1>
        
        <% if(request.getAttribute("msg") != null) { %>
            <div class="message">${msg}</div>
        <% } %>
        
        <form action="login" method="post">
            <div>
                <label for="cid">Customer ID:</label>
                <input type="number" id="cid" name="cid" placeholder="Enter Customer ID" required>
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
            </div>
            <div class="button-group">
                <button type="reset">Cancel</button>
                <button type="submit">Login</button>
            </div>
        </form>
        
        <a href="Home.jsp" class="home-button"><button>Home</button></a>
    </div>
</body>
</html>
