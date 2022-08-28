<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Bean.Monster" %><%--
  User: 13585
  Date: 2022/8/15
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>java_code</title>
</head>
<body>
<%
    ArrayList<Monster> monsters = new ArrayList<>();
    monsters.add(new Monster(1, "c",300));
    monsters.add(new Monster(2, "j",500));
    monsters.add(new Monster(3, "j",800));
%>
<table bgcolor="#f0f8ff" border="1px" width="500px">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>salary</td>
    </tr>
    <%
        for (int i = 0; i < monsters.size(); i++) {
            Monster monster = monsters.get(i);
    %>
            <tr>
                <td><%=monster.getId()%></td>
                <td><%=monster.getName()%></td>
                <td><%=monster.getSalary()%></td>
            </tr>
    <%
        }
    %>
</table>
</body>
</html>
