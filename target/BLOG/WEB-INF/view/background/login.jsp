<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/28
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String path = request.getContextPath();
    %>
    <script>
        var path = "<%=request.getContextPath()%>";
    </script>
    <script src="<%=path%>/resources/layui/layui.js"></script>
    <script src="<%=path%>/resources/js/background/login.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/layui/css/layui.css"/>
    <link rel="stylesheet" href="<%=path%>/resources/css/background/login.css"/>
</head>
<body>
    <div class="mask"></div>
    <div class="main">
        <h1><span style="font-size: 84px;">B</span><span style="font-size:30px;">log</span></h1>
        <p id="time"></p>
        <div class="enter">
            Please&nbsp;&nbsp;Click&nbsp;&nbsp;Enter
        </div>
    </div>
</body>
</html>
