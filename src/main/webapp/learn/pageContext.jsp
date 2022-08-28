<%--
  User: 13585
  Date: 2022/8/15
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<hr/>
协议： ${ pageContext.request.scheme }<br>
服务器 ip：${ pageContext.request.serverName }<br>
服务器端口：${ pageContext.request.serverPort }<br>
工程路径：${ pageContext.request.contextPath }<br>
请求方法：${ pageContext.request.method }<br>
客户端 ip 地址：${ pageContext.request.remoteHost }<br>
会话 id ：${ pageContext.session.id }<br>
<h1>使用 jsp 表达式脚本获取如上信息</h1>
ip 地址: <%=request.getRemoteHost() %>
<br> <h1>使用 el 表达式形式获取信息</h1>
<% pageContext.setAttribute("req", request); %>
ip 地址: ${req.remoteHost} <br>
获取请求方法: ${req.method} <br>
</body>
</html>
