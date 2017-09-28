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
    <link rel="stylesheet" href="<%=path%>/resources/css/util.css"/>
    <title>Title</title>
</head>
<body>
    <!--顶部-->
    <div class="layui-row layui-bg-black website-header">
        <div class="layui-col-md-2 layui-inline">
            <div class="blog-flag">
                <img src="<%=path%>/resources/img/background/Logo_40.png" class="pic-background"/>
            </div>
        </div>
        <div class="layui-container layui-hide-xs layui-inline back-title text-center">
            Richard's Blog 后台管理系统
        </div>
        <div class="layui-col-md-2 layui-inline">
            <a class="back-nav">返回主页</a>
            <a class="back-nav"><i class="layui-icon">&#xe614;</i>注销</a>
        </div>
    </div>
    <!--左侧导航栏-->
    <div class="layui-side-scroll">
        <ul class="layui-nav layui-nav-tree" lay-filter="leftnav">
            <li class="layui-nav-item layui-bg-green layui-nav-itemed">
                <a href="">首页</a>
            </li>
            <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
            <li class="layui-nav-item layui-nav-itemed">
                <a href="javascript:;">内容管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">文章管理</a></dd>
                    <dd><a href="javascript:;">资源管理</a></dd>
                    <dd><a href="javascript:;">资源管理</a></dd>
                    <dd><a href="javascript:;">时光轴管理</a></dd>
                    <dd><a href="javascript:;">笔记本管理</a></dd>
                    <dd><a href="javascript:;">文章回收站</a></dd>
                    <dd><a href="javascript:;">资源回收站</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">用户管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">全部用户</a></dd>
                    <dd><a href="">黑名单用户</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">扩展管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">友情链接</a></dd>
                    <dd><a href="">博主信息</a></dd>
                    <dd><a href="">网站信息</a></dd>
                    <dd><a href="">网站公告</a></dd>
                    <dd><a href="">更新日志</a></dd>
                    <dd><a href="">留言管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">系统配置</a>
                <dl class="layui-nav-child">
                    <dd><a href="">QQ互联</a></dd>
                    <dd><a href="">站点地图</a></dd>
                </dl>
            </li>
        </ul>
    </div>