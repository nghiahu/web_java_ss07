<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Góp ý</title></head>
<body>
<h2>Form Góp Ý</h2>

<c:if test="${not empty errors}">
    <ul style="color:red;">
        <c:forEach var="error" items="${errors}">
            <li>${error}</li>
        </c:forEach>
    </ul>
</c:if>

<form:form action="submit" modelAttribute="feedback" method="post">
    Họ và tên: <form:input path="fullName"/><br><br>
    Số điện thoại: <form:input path="phone"/><br><br>
    Địa chỉ: <form:input path="address"/><br><br>
    Nội dung góp ý: <form:textarea path="content"/><br><br>
    <input type="submit" value="Gửi góp ý"/>
</form:form>

</body>
</html>
