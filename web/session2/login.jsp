<%--
  Created by IntelliJ IDEA.
  User: JOE
  Date: 2019/10/4
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html>
<head>
    <title>Login</title>
    <base href="<%=basePath%>">
    <script type="text/javascript">
        function _change() {
            /*
            * 1.得到image元素
            * 2.修改其src为 /verifycodeservlet
            * */
            var imageEle = document.getElementById("image1");
            //使用不同的参数(当前的毫秒数)阻止浏览器获取缓存
            imageEle.src = "/verifycodeservlet?a="+ new Date().getTime();
        }
    </script>
</head>
<body background="">
<h2>登录</h2>
<%
    /*
    * 获取用户名
    * 获取名为uname的cookie :
    * 如果为空，显示“ ”；
    * 如果不为空，显示cookie的值
    * */
    String uname = "";
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(Cookie c:cookies){
            if("uname".equals(c.getName())){
                uname = c.getValue();//获取此cookie的值，给username这个变量
            }
        }
    }



%>
<%
    /*
    * 判断是否登录
    * */
    String message = "";
    String usernameErr = "";
    String passwordErr = "";
    String verifyCodeErr = "";
    //登录信息
    String msg = (String)request.getAttribute("msg");
    if(msg != null){
        message = msg;
    }
    //用户名信息
    String usernameErr1 = (String)request.getAttribute("usernameErr");
    if(usernameErr1 != null){
        usernameErr = "* "+usernameErr1;
    }
    //密码信息
    String passwordErr1 = (String)request.getAttribute("passwordErr");
    if(passwordErr1 != null){
        passwordErr = "* "+passwordErr1;
    }
    //验证码信息
    String  verifycodeErr1 = (String) request.getAttribute("verifycodeErr");
    if(verifycodeErr1 != null){
        verifyCodeErr = "*"+verifycodeErr1;
    }
%>
<font color="#ff7f50"><b><%=message%></b></font>
<form action="/newLoginServlet" method="post">
    用户名:<input type="text" name="username" value="<%=uname %>"><font color="#8a2be2"><%=usernameErr%></font><br>
    密  码:<input type="password" name="password"><font color="#7fff00"><%=passwordErr%></font><br>
    验证码：<input type="text" name="verifycode">
            <img id="image1" src="/verifycodeservlet">
            <a href="javascript:_change()">换一张</a>
    <font color="#ff8c00"><%=verifyCodeErr%></font><br>
    <br>
    <input type="submit" value="登录">
</form>
</body>
</html>
