<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head><title>Kết quả góp ý</title></head>
<body>
<h2>Thông tin góp ý đã gửi</h2>
<table border="1">
  <tr><th>Họ và tên</th><td>${feedback.fullName}</td></tr>
  <tr><th>Số điện thoại</th><td>${feedback.phone}</td></tr>
  <tr><th>Địa chỉ</th><td>${feedback.address}</td></tr>
  <tr><th>Nội dung</th><td>${feedback.content}</td></tr>
</table>
<br>
<a href="list">Xem danh sách góp ý</a>
</body>
</html>
