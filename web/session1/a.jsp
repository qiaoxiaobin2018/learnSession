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
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()  + contextPath + "/";
%>
<html>
<head>
    <title>设置 sessoin</title>
    <base href="<%=basePath%>">
</head>
<body>
<h2>设置session</h2>
<%
    session.setAttribute("aaa","123");
    out.print("SessionID: "+session.getId()+"<br>已设置！<br>");
    String aaa = (String) session.getAttribute("aaa");
    out.print(basePath+"<br>");
    out.print(aaa);

%>
<br>
<a href="./session1/b.jsp">Go!</a>

</body>
</html>
