<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Danh sách góp ý</title></head>
<body>
<h2>Danh sách góp ý</h2>
<table border="1">
    <tr>
        <th>Họ và tên</th>
        <th>Số điện thoại</th>
        <th>Địa chỉ</th>
        <th>Nội dung</th>
    </tr>
    <c:forEach var="fb" items="${feedbackList}">
        <tr>
            <td>${fb.fullName}</td>
            <td>${fb.phone}</td>
            <td>${fb.address}</td>
            <td>${fb.content}</td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="form">Gửi góp ý mới</a>
</body>
</html>
