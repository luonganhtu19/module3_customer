<%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 1/4/2021
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Information customer</title>
</head>
<body>
<fieldset>
    <legend>Information </legend>
    <table>
        <tr>
            <td>Name: </td>
            <td>${customer.name}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${customer.email}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${customer.address}</td>
        </tr>
    </table>
</fieldset>
<p>
    <a href="/customer">Back Home</a>
</p>
</body>
</html>
