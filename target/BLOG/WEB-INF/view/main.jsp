<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/26
  Time: 16:06
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
    <title>Title</title>
    <script src="<%=path%>/resources/layui/layui.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/layui/css/layui.css"/>
    <link rel="stylesheet" href="<%=path%>/resources/css/util.css"/>
    <style>
        body {background-color: #eeeeee;}
    </style>
</head>
<body>
<div class="layui-fluid layui-bg-black website-header">
    <div class="layui-container">
        <a class="website-name layui-show-xs-inline" href="<%=path%>/home">Richard</a>
        <ul class="layui-nav layui-hide-xs website-nav" lay-filter="nav">
            <li class="layui-nav-item">
                <a href="<%=path%>/index"><i class="layui-icon icon_size">&#xe68e;</i>网站首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/article"><i class="layui-icon icon_size">&#xe705;</i>博客文章</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/source"><i class="layui-icon icon_size">&#xe641;</i>资源分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/community"><i class="layui-icon icon_size">&#xe857;</i>社区</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/website"><i class="layui-icon icon_size">&#xe60b;</i>关于本站</a>
            </li>
        </ul>
        <ul class="layui-nav website-user">
            <li class="layui-nav-item">
                <a href=""><img src="http://t.cn/RCzsdCq" class="layui-nav-img">我</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">修改信息</a></dd>
                    <dd><a href="javascript:;">安全管理</a></dd>
                    <dd><a href="javascript:;">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>



