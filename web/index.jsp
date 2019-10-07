<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Index.jsp</title>
</head>
<body>
<%
  request.getSession();
  request.getSession().setAttribute("key","session");%>
<%=session.getId() %>
<a href="./bb.jsp">点击</a>
</body>
</html>