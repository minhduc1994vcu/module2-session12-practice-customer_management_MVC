<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019-04-18
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Customer</title>
</head>
<body>
<h1>Delete Customer</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p><a href="/customers">Back to customer list</a></p>
<form method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Delete customer"></td>
        </tr>
    </table>
</form>
</body>
</html>
