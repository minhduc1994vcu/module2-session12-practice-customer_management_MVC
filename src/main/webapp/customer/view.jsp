<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019-04-18
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>View information of customer</h1>
<p><a href="/customers">Back to customer list</a></p>
<form method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
</form>
</body>
</html>
