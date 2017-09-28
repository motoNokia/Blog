<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/28
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        String path = request.getContextPath();
    %>
    <script>
        var path = "<%=request.getContextPath()%>";
    </script>
    <script src="<%=path%>/resources/layui/layui.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/layui/css/layui.css"/>
    <title>Title</title>
</head>
<body>