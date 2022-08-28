<%--
  User: 13585
  Date: 2022/8/14
  Time: 1:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>计算结果</h1>
<%
    int num1 = Integer.parseInt((String) request.getAttribute("num1"));
    int num2 = Integer.parseInt((String) request.getAttribute("num2"));
    String cal = (String) request.getAttribute("cal");
    int res = 0;
    if(cal.equals("add")){
        cal = "+";
        res = num1+num2;
    }
    if(cal.equals("minus")){
        cal = "-";
        res = num1-num2;
    }
    if(cal.equals("multi")){
        cal = "*";
        res = num1*num2;
    }
    if(cal.equals("div")){
        cal = "/";
        res = num1/num2;
    }
    out.println(num1 + cal + num2 +"=" +res);
%>
<a href="/jsp/sum.jsp">重新再玩一次</a>
</body>
</html>
