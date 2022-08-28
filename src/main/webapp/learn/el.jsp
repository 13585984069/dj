<%--
  User: 13585
  Date: 2022/8/15
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>el表达式</title>
</head>
<body>
<% request.setAttribute("key","key值"); %>
若空返回null<br>
jsp表达式:<%=request.getAttribute("key") == null? "":request.getAttribute("key")%>
el表达式:${key}
若空返回""<br>
</body>
</html>
