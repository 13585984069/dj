<%@ page import="com.Bean.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  User: 13585
  Date: 2022/8/15
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>el常用表达式</title>
</head>
<body>
<%
    Book book = new Book();
    book.setName("昆虫总动员");
    book.setWriter(new String[]{"jack", "tom", "henry"});
    pageContext.setAttribute("book", book);
    ArrayList<String> readers = new ArrayList<>();
    readers.add("汤姆");
    readers.add("玛丽");
    book.setReader(readers);
    HashMap<String, String> topics = new HashMap<>();
    topics.put("key1", "这是我看过的最好的动画片");
    topics.put("key2", "昆虫总动员 2，非常期待..");
    topics.put("3", "昆虫总动员 3，非常期待..");
    book.setTopics(topics);
%>
<h1>EL 输出数据</h1>
book信息: ${book}<br/>
book.writer:${book.writer[0]}<br/>
book.reader集合 ${book.reader}<br/>
book.reader:${book.reader[2]}<br/>
book.map:${book.topics.key1}<br/>
book.map:${book.topics["key2"]}<br/>
</body>
</html>
