<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>CARS BY DRIVER</title>
</head>
<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<form method="post" id="car" action="${pageContext.request.contextPath}/drivers/cars">
    <h1 class="table_dark">CARS BY DRIVER</h1>

    <div style="display: flex; justify-content: center;">
        <table>
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
                    <button type="submit">Show cars</button>
                </td>
            </tr>
        </table>
    </div>

    <table border="1" class="table_dark">
        <tr>
            <th>Driver</th>
            <th>Driver's License number</th>
            <th>Manufacturer</th>
            <th>Model</th>
            <th>License plate</th>
        </tr>

        <c:forEach var="car" items="${cars}">
        <td>
            <c:out value="${driver_name}"/>
        </td>

            <td>
                <c:out value="${driver_license}"/>
            </td>


                <td>
                    <c:out value="${car.manufacturer.name}"/>
                </td>
                <td>
                    <c:out value="${car.manufacturer.model}"/>
                </td>
                <td>
                    <c:out value="${car.licensePlate}"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

<div style="display: flex; justify-content: center;">
    <button onclick="location.href='${pageContext.request.contextPath}/index'" style="width: 200px;">
        Return to menu
    </button>
</div>

</body>
</html>
