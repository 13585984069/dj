<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  User: 13585
  Date: 2022/8/14
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>查询妖怪</title>
</head>
<body>
<h1>妖怪列表如下</h1>

<%--
    <c:forEach items="${ requestScope.sports }" var="item"/>
    1. items 遍历的集合/数组
    2. var 遍历到的数据
    3. 等价 for (Object item: arr) {}
--%>
<h1>111</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>salary</td>
    </tr>
    <c:forEach items="${requestScope.monsters}" var="item">
        <c:if test="${item.salary > 2000}">
            <tr>

                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.salary}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>

</body>
</html>