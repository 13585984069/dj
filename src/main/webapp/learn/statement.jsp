<%--
  User: 13585
  Date: 2022/8/14
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>声明</h1>
<%!
    private Integer id;
    private String name = "老韩";
    private String job;
    private static  String company;
    private Double sal;
    static {
        company="byteDance";
    }
    public String getName(){
        return name;
    }
%>

<h1><%=getName()%></h1>
</body>
</html>
