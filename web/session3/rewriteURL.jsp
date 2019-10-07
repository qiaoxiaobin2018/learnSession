<%--
  Created by IntelliJ IDEA.
  User: JOE
  Date: 2019/10/6
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<body>
    <b><%out.print(response.encodeURL("/LoginServlet"));%></b>
</body>
</html>
