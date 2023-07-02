<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>

<head>
    <title>ADD DRIVER TO THE CAR</title>
</head>

<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">ADD DRIVER TO THE CAR</h1>

<table border="1" class="table_dark">
    <tr>
        <th>Car</th>
        <th>Driver</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <select name="driver_id" form="car" required>
                <c:forEach var="driver" items="${drivers}">
                    <option value="${driver.id}">
                        <c:out value="${driver.name}"/>
                        <c:out value="${driver.licenseNumber}"/>
                    </option>
                </c:forEach>
            </select>
        </td>
        <td>
            <select name="car_id" form="car" required>
                <c:forEach var="car" items="${cars}">
                    <option value="${car.id}">
                        <c:out value="${car.licensePlate}"/>
                        <c:out value="${car.manufacturer}"/>
                    </option>
                </c:forEach>
            </select>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>

<div style="display: flex; justify-content: center;">
    <h4 style="color: red; text-align: center;">${errorMsg}</h4>
    <h4 style="color: green; text-align: center;">${successMsg}</h4>
</div>

<div style="display: flex; justify-content: center;">
    <button onclick="location.href='${pageContext.request.contextPath}/index'" style="width: 200px;">
        Return to menu
    </button>
</div>

</body>
</html>
