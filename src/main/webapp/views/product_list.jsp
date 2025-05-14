<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nghia
  Date: 14/05/2025
  Time: 10:00 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f7f7f7;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #f0f0f0;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        img {
            width: 100px;
            height: auto;
            object-fit: cover;
            border-radius: 4px;
        }

        button {
            padding: 6px 12px;
            background-color: #007bff;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<table>
    <tr>
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Giá sản phẩm</th>
        <th>Số lượng trong kho</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><img src="${product.image}" alt="Ảnh sản phẩm"></td>
            <td>${product.name}</td>
            <td>${product.price}$</td>
            <td>${product.stock}</td>
            <td>
                <button>Xem chi tiết</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
