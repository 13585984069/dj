<%--
  Created by IntelliJ IDEA.
  User: 13585
  Date: 2022/8/13
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp 简单求和</title>
    <script type="text/javascript">
        function check(){
            let num1 = document.getElementById("num1").value;
            let num2 = document.getElementById("num2").value;
            let reg = /^[-]?([1-9]\d*|0)$/;
            if(!reg.test(num1)){
                alert("num1 有误");
                return false;
            }
            if(!reg.test(num2)){
                alert("num2 有误");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h1>jsp版本-计算器</h1>
<form action="/jsp/check.jsp" onsubmit="return check()">
    num1: <input type="text" id="num1" name="num1"><br>
    num2: <input type="text" id="num2" name="num2"><br>
    运算符号:
    <select name="cal">
    <option>--选择--</option>
    <option value="add">+</option>
    <option value="minus">-</option>
    <option value="multi">*</option>
    <option value="div">/</option>
    </select><br>
    <input type="submit" value="计算">
</form>
</body>
</html>
