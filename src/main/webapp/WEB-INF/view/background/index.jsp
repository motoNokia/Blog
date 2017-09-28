<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/28
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="template.jsp"></jsp:include>
<%
    String path = request.getContextPath();
%>
<script>
    var path = "<%=request.getContextPath()%>";
</script>
<script src="<%=path%>/resources/js/background/index.js"></script>

<div class="layui-footer" style="left: 200px;">
    <p style="line-height:44px;text-align:center;">不落阁后台管理系统 - Design By LY</p>
</div>
