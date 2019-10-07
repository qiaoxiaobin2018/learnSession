<%--
  Created by IntelliJ IDEA.
  User: JOE
  Date: 2019/10/4
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <title>succ1</title>
    <base href="<%=basePath%>">
</head>
<body>
<h3>succ1</h3>
<%
    String username = (String)session.getAttribute("username");
    if(username == null){
        /*
        * 1.向Request域中保存错误信息，转发到login.jsp中
        *
        * */
        request.setAttribute("msg","先登录吧~");
        request.getRequestDispatcher("/session2/login.jsp").forward(request,response);
        return;
    }
    else{


    }
%>
<p>
    欢迎您，<font color="#ff7f50"><%=session.getAttribute("username")%></font>。
    <a href="/logout" >退出</a>
</p>

</body>
</html>
