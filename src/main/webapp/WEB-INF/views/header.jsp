<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>

  .logout-link {
    position: absolute;
    top: 10px;
    right: 10px;
  }
</style>
<html>
<head>
  <title>Title</title>
</head>
<body>
&nbsp;<a href="${pageContext.request.contextPath}/logout" class="logout-link">Logout</a>
</body>
</html>
