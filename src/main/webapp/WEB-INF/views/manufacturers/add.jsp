<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>

<head>
    <title>ADD MANUFACTURERS AND MODELS</title>
</head>

<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h1 class="table_dark">ADD MANUFACTURERS AND MODELS</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>Model</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="model" form="manufacturer" required>
        </td>
        <td>
            <input type="submit" name="add" form="manufacturer" required>
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
