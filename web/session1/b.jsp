<%--
  Created by IntelliJ IDEA.
  User: JOE
  Date: 2019/10/4
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <title>获取session</title>
    <base href="<%=basePath%>">
</head>
<body>
<h2>获取session</h2>
<%
    out.print("SessionID: "+session.getId()+"<br>");
    String aaa = (String)session.getAttribute("aaa");
%>
<%out.print(aaa);%>
</body>
</html>
