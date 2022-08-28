<%--
  User: 13585
  Date: 2022/8/14
  Time: 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.pan" %>
<html>
<head>
    <title>check</title>
</head>
<body>
<%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    if(pan.isDigit(num1) && pan.isDigit(num2)){
        request.setAttribute("num1", num1);
        request.setAttribute("num2", num2);
        request.setAttribute("cal", request.getParameter("cal"));
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }else{
        response.sendRedirect("/jsp/error.jsp");
    }
%>
</body>
</html>
