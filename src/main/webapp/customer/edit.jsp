<%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 1/4/2021
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
    <h1> Edit customer</h1>
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/customer"> Back to customer list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend> Edit information of Product</legend>
            <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${customer.name}"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="email" value="${customer.email}"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" id="address" value="${customer.address}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="Edit customer" ></td>
            </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
