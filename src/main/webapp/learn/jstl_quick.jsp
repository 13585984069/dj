<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.Bean.Monster" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 13585
  Date: 2022/8/15
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jstl快速rumen</h1>
get:${pageContext.request.method}
<c:if test="${5 > 3}">
    <h1>10 > 2为真</h1>
</c:if>

<c:set scope="request" var="username" value="chenjiajun">
</c:set>
username=${requestScope.username}
<c:forEach begin="1" end="5" var="i">
    <li>排名${i}</li>
</c:forEach>
<%request.setAttribute("sports", new String[]{"打篮球","乒乓球"});%>
<c:forEach items="${requestScope.sports}" var="item">
    <li>${item}</li>
</c:forEach>
<%
    Map<String, String> map = new HashMap<>();
    map.put("key1","shanghai");
    map.put("key2","beijing");
    map.put("key3","tianjin");
    request.setAttribute("ditu", map);
%>
<c:forEach items="${ditu}" var="item">
    <li>${item.key}-${item.value}</li>
</c:forEach>
<%
    List<Monster> monsters = new ArrayList<>();
    monsters.add(new Monster(100, "小妖怪", 345));
    monsters.add(new Monster(200, "大妖怪", 1345));
    monsters.add(new Monster(300, "老妖怪", 11345));
    request.setAttribute("monsters", monsters); %>
</body>

<c:forEach items="${requestScope.monsters}" var="item">
    id--${item.id}, 名字--${item.name}, sal--${item.salary}
</c:forEach>
</html>
