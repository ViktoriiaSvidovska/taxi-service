<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h1 class="table_dark">TAXI SERVICE</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
  <div style="text-align:center;">
    <br>
    Please enter your login: <input type="text" name="login" required><br>
    Please enter your password: <input type="password" name="password" required><br>
    <br>
    <h4 style="color:red">${errorMsg}</h4>
    <button type="submit">Login</button>
  </div>
</form>
</body>
</html>
