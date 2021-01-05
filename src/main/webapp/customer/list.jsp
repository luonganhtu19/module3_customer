<%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 1/4/2021
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show product</title>
</head>
<body>
    <h1> Customer List</h1>
    <p>
        <a href="/customer?action=create">Create New Customer</a>
    </p>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Email </td>
            <td>Address</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${requestScope['listCustomer']}" var="customer">
        <tr>
            <td><a href="/customer?action=view&id=${customer.id}">${customer.name}</a></td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td><a href="/customer?action=edit&id=${customer.id}">edit</a></td>
            <td><a href="/customer?action=delete&id=${customer.id}">delete</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
