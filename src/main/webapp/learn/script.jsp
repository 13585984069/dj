<%--
  User: 13585
  Date: 2022/8/14
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Script</title>
</head>
<body>
<h1> 脚本应用实例</h1>
<%!
    String name = "chen";
%>
<hr/>
<h1>
    个人信息
    用户名=<%=name%><br/>
    工作是:<%="java 工程师"%><br/>
    得到参数=<%=request.getParameter("sex")%>
</h1>
</body>
</html>
