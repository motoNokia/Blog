<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/27
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="main.jsp"></jsp:include>
<%
    String path = request.getContextPath();
%>
<script>
    var path = "<%=request.getContextPath()%>";
</script>
<script src="<%=path%>/resources/js/index.js"></script>

<div class="layui-container">
    <div class="layui-row layui-col-space20">
        <div class="layui-col-md8" id="leftList">
            <div class="card margin-top30 height150">
                引用区域的文字
            </div>
            <div class="card margin-top10 height150">
                引用区域的文字
            </div>
            <div class="card margin-top10 height150">
                引用区域的文字
            </div>
            <div class="card margin-top10 height150">
                引用区域的文字
            </div>
            <div class="card margin-top10 height150">
                引用区域的文字
            </div>
        </div>
        <div class="layui-col-md4 layui-hide-xs layui-hide-sm layui-show-md-inline">
            <div class="card layui-anim layui-anim-fadein margin-top30 height400">
                <a href="<%=path%>/article/addArticle" class="layui-btn margin-top30">发表文章</a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>

