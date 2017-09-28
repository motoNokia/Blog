<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/27
  Time: 10:53
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
<script src="<%=path%>/resources/js/website.js"></script>

<jsp:include page="bottom.jsp"></jsp:include>