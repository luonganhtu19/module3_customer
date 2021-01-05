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
    <title>Delete Customer</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
    <h1>Delete customer</h1>
    <p>
        <a href="/customer"> Back home</a>
    </p>
    <c:set var="message" value="check"></c:set>
    <c:choose>
        <c:when test="${requestScope['message']!=null}">
                <span class="message">${requestScope['message']}</span>
        </c:when>
        <c:otherwise>
            <form method="post">
                <fieldset>
                    <legend> Delete Customer</legend>
                    <table>
                        <tr>
                            <td> Name </td>
                            <td>${customer.name}</td>
                        </tr>
                        <tr>
                            <td> Email </td>
                            <td>${customer.email}</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>${customer.address}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="submit" value="Delete customer"></td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </c:otherwise>
    </c:choose>
</body>
</html>
