<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>

<head>
    <title>MANUFACTURERS AND MODELS</title>
</head>

<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<h1 class="table_dark">MANUFACTURERS AND MODELS</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Model</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>
                <c:out value="${manufacturer.id}"/>
            </td>
            <td>
                <c:out value="${manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${manufacturer.model}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
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
