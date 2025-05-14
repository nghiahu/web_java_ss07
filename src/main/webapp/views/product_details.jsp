<%--
  Created by IntelliJ IDEA.
  User: nghia
  Date: 14/05/2025
  Time: 10:17 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2>Chi tiết sản phẩm</h2>
  <img src="${product.image}" width="200" height="200"/><br/>
  <strong>Tên:</strong> ${product.name}<br/>
  <strong>Giá:</strong> ${product.price} VND<br/>
  <strong>Số lượng còn lại:</strong> ${product.stock}<br/>
  <strong>Mô tả:</strong> ${product.description}<br/>
</body>
</html>
