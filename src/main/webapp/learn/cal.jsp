<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  User: 13585
  Date: 2022/8/15
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<hr/>
<% request.setAttribute("k1", null);
request.setAttribute("k2", "");
request.setAttribute("k3", new Object[]{});
request.setAttribute("k4", new ArrayList<String>());
request.setAttribute("k5", new HashMap<String,Object>()); %>
k1 是否为空= ${empty k1}<br/>
k2 是否为空= ${empty k2}<br/>
k3 是否为空= ${empty k3}<br/>
k4 是否为空= ${empty k4}<br/>
k5 是否为空= ${empty k5}<br/>
<% request.setAttribute("score", 90); %>
你的成绩为: ${score >= 60 ? "及格": "不及格"}
</body>
</html>
