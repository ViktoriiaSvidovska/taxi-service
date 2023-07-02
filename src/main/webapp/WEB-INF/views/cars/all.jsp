<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>

<html>
<head>
    <title>CARS</title>
</head>

<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<h1 class="table_dark">CARS</h1>

<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>License plate</th>
        <th>Manufacturer</th>
        <th>Model</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.licensePlate}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.model}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>

<div style="display: flex; justify-content: center;">
    <button onclick="location.href='${pageContext.request.contextPath}/index'" style="width: 200px;">
        Return to menu
    </button>
</div>

</body>
</html>
