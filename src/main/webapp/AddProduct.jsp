<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
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
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="file"] {
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
    if(session.getAttribute("customer") == null) {
    %>
        <div class="error-message">
            <h1>Invalid Session</h1>
        </div>
        <% request.getRequestDispatcher("Home.jsp").include(request, response); %>
    <% } else { %>
        <div class="container">
            <h1>Add Product to Sell</h1>
            <form action="addproduct" method="post" enctype="multipart/form-data">
                <div>
                    <label for="pname">Product Name:</label>
                    <input type="text" id="pname" name="pname" required>
                </div>
                <div>
                    <label for="pprice">Product Price:</label>
                    <input type="text" id="pprice" name="pprice" required>
                </div>
                <div>
                    <label for="pimage">Product Image:</label>
                    <input type="file" id="pimage" name="pimage" required>
                </div>
                <div class="button-group">
                    <button type="reset">Cancel</button>
                    <button type="submit">Put on Sale</button>
                </div>
            </form>
            <a href="Home.jsp" class="home-button"><button>Home</button></a>
        </div>
    <% } %>
</body>
</html>
