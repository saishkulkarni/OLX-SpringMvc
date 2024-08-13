<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mvc_olx.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="mvc_olx.dao.CustomerDao"%>
<%@page import="mvc_olx.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Listing</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        button {
            background-color: #2ecc71;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border-radius: 4px;
        }
        button:hover {
            background-color: #27ae60;
        }
        .home-button {
            display: block;
            width: 200px;
            margin: 20px auto;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Product Listing</h1>
    <table>
        <tr>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Image</th>
            <th>Action</th>
        </tr>
        <% for (Product product : (List<Product>) request.getAttribute("list")) { %>
        <tr>
            <td><%= product.getName() %></td>
            <td>$<%= String.format("%.2f", product.getPrice()) %></td>
            <td>
                <% String base64 = Base64.encodeBase64String(product.getImage()); %>
                <img src="data:image/jpeg;base64,<%= base64 %>" alt="<%= product.getName() %>">
            </td>
            <td><a href="buy?id=<%= product.getId() %>"><button>Buy</button></a></td>
        </tr>
        <% } %>
    </table>

    <a href="Home.jsp" class="home-button"><button>Home</button></a>
</body>
</html>
